
# ====================================================================
# TITAN FINTECH: THE MONITORED FORTRESS
# Build your VPC, Subnets, Flow Logs, Security Group, and EC2 instance below.
# 
# Hint: When your EC2 instance needs an IAM profile, use:
# iam_instance_profile = aws_iam_instance_profile.ssm_profile.name
# 
# Hint: When your Flow Log needs an IAM role, use:
# iam_role_arn = aws_iam_role.flow_log_role.arn
# ====================================================================

# Provider
provider "aws" {
  region = "us-east-1"
}

# ============================================
# VPC RESOURCES
# ============================================

resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags                 = { Name = "titan-prod-vpc" }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags   = { Name = "titan-prod-igw" }
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags                    = { Name = "titan-prod-public-subnet" }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }
  tags = { Name = "titan-prod-public-rt" }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

# ============================================
# CLOUDWATCH & FLOW LOGS
# ============================================

resource "aws_cloudwatch_log_group" "vpc_flow_logs" {
  name              = "/tkh/titan-prod-vpc-logs"
  retention_in_days = 1
  tags              = { Name = "titan-prod-flow-logs" }
}

resource "aws_flow_log" "vpc" {
  # Use the role from iam_provided.tf directly
  iam_role_arn    = aws_iam_role.flow_log_role.arn
  log_destination = aws_cloudwatch_log_group.vpc_flow_logs.arn
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.main.id
  tags            = { Name = "titan-prod-flow-log" }
}

# ============================================
# SECURITY GROUP & EC2
# ============================================

resource "aws_security_group" "zero_trust" {
  name        = "titan-prod-zero-trust-sg"
  description = "Zero Trust Security Group - No inbound ports"
  vpc_id      = aws_vpc.main.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "titan-prod-zero-trust-sg" }
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "titan" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.zero_trust.id]
  # Use the instance profile from iam_provided.tf directly
  iam_instance_profile = aws_iam_instance_profile.ssm_profile.name
  key_name             = ""

  tags = {
    Name = "titan-prod-ec2"
  }

  user_data = <<-EOF
    #!/bin/bash
    systemctl restart amazon-ssm-agent
  EOF

  # Wait for SSM to be ready
  depends_on = [aws_iam_instance_profile.ssm_profile]
}
