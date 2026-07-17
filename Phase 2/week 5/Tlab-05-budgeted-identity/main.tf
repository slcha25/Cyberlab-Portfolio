# Provider Configuration
provider "aws" {
  region = "us-east-1"
}

# Random ID for unique resource names
resource "random_id" "id" {
  byte_length = 3
}

# ============================================
# STEP 2: BUDGET (Financial Firewall)
# ============================================
resource "aws_budgets_budget" "monthly_budget" {
  name              = "titan-fintech-monthly-budget"
  budget_type       = "COST"
  limit_amount      = "10"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 80
    threshold_type             = "PERCENTAGE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = ["s.leng.chan@outlook.com"]  # ← CHANGE THIS!
  }
}

# ============================================
# STEP 3: S3 BUCKET (Secure Storage Vault)
# ============================================
resource "aws_s3_bucket" "vault" {
  bucket = "titan-fintech-vault-sc-${random_id.id.hex}"
  # Example: if your name is John Doe, use "jdm" or "jd"
  
  # Force destroy for lab purposes (so terraform destroy works)
  force_destroy = true
}

# Make bucket private (block all public access)
resource "aws_s3_bucket_public_access_block" "vault_private" {
  bucket = aws_s3_bucket.vault.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# ============================================
# STEP 4: IAM ROLE + POLICY (Least Privilege)
# ============================================

# IAM Role - EC2 can assume this role
resource "aws_iam_role" "ec2_vault_role" {
  name = "Titan-EC2-Vault-Role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

# IAM Policy - ONLY allows PutObject to THIS SPECIFIC bucket
resource "aws_iam_policy" "vault_put_policy" {
  name        = "Titan-Vault-PutOnly-Policy"
  description = "Allows only PutObject to the Titan FinTech vault"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = "s3:PutObject"
        Resource = "${aws_s3_bucket.vault.arn}/*"
        # This uses Terraform interpolation - NEVER hardcoded!
      }
    ]
  })
}

# Attach the policy to the role
resource "aws_iam_role_policy_attachment" "attach_vault_policy" {
  role       = aws_iam_role.ec2_vault_role.name
  policy_arn = aws_iam_policy.vault_put_policy.arn
}

# ============================================
# STEP 5: EC2 INSTANCE (Compute)
# ============================================

# IAM Instance Profile - allows EC2 to "wear" the role
resource "aws_iam_instance_profile" "ec2_vault_profile" {
  name = "Titan-EC2-Vault-Profile"
  role = aws_iam_role.ec2_vault_role.name
}

# EC2 Instance - Ubuntu, t2.micro (Free Tier)
resource "aws_instance" "vault_server" {
  ami           = "ami-0b6d9d3d33ba97d99"  # Ubuntu 22.04 LTS in us-east-1
  instance_type = "t3.micro"

  # Attach the IAM role using the instance profile
  iam_instance_profile = aws_iam_instance_profile.ec2_vault_profile.name

  tags = {
    Name = "Titan-Vault-Server"
  }
}
