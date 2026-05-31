#!/usr/bin/env python3
import subprocess
import json

print("[*] Initiating Automated Threat Hunt...")

# TASK 1: Use subprocess to grep for "Failed password" in /var/log/titan_sim/auth_sim.log
# Ensure you capture the output and convert it to text

#result = subprocess.run('cat /var/log/titan_sim/auth_sim.log | grep Failed password',capture_output=True,text=True,shell=True)
 
log_file = "/var/log/titan_sim/auth_sim.log"
result = subprocess.run(f'cat {log_file} | grep "Failed password"', capture_output=True, text=True, shell=True)
raw_output = result.stdout


# TASK 2: Parse the captured output to extract ONLY the attacking IP addresses.
# Hint: Loop through each line, split the line by spaces, and grab index [10].
# Save the IPs to a Python List called attacker_ips.
# Turn the text block into a list of individual lines
lines = raw_output.split('\n')

# Create an empty list to hold attacker IPs
attacker_ips = []

# Loop through each line
for line in lines:

    # Only process lines that have content
    if line:

        # Split by spaces, grab the IP at index 10
        ip = line.split(" ")[10]
        attacker_ips.append(ip)


# TASK 3: Create a dictionary containing the extracted IPs and export it to 'threat_report.json'
# Dictionary format: {"alert_type": "Brute Force", "attacker_ips": attacker_ips}
# Create a Python dictionary that structures your alert:
alert_data = {
    "alert_type": "Brute Force",
    "attacker_ips": attacker_ips
}
# Write the file:
with open("threat_report.json", "w") as file:
    json.dump(alert_data, file, indent=4)


print("[+] Threat Hunt Complete. Report generated.")
