#!/bin/bash
# DMZ LOCKDOWN SCRIPT (iptables)
# Operator:sokchan 

# Flush existing rules
iptables -F

# Allow Web Server to receive internet traffic on ports 80 and 443
iptables -A INPUT -p tcp -m multiport --dports 80,443 -j ACCEPT

# Prohibit initiating connection to internal subnet (10.0.5.0/24)
iptables -A OUTPUT -d 10.0.5.0/24 -j DROP

# EXCEPTION: Allow outbound to SQL/DB on port 3306
iptables -A OUTPUT -p tcp -d 10.0.5.50 --dport 3306 -j ACCEPT

