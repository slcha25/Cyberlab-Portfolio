#!/usr/bin/env python3
import subprocess
import json
import os

print("[*] Initiating System Audit...")

# INSTRUCTION 1: Use subprocess.run() to execute 'ps aux'
process_list = subprocess.run(['ps', 'aux'], capture_output=True, text=True)

# INSTRUCTION 2: Search the captured output for the malicious process
if "unauthorized_cryptominer" in process_list.stdout:
    # INSTRUCTION 3: If found, create a dictionary and save it to 'security_alert.json'
    alert_data = {
        "event": "Unauthorized Process",
        "severity": "High",
        "process": "unauthorized_cryptominer"
    }
    
    with open("security_alert.json", "w") as file:
        json.dump(alert_data, file, indent=4)
    
    print("[!] Alert: Unauthorized cryptominer detected!")
else:
    print("[✓] No unauthorized processes detected.")

print("[+] Audit Complete.")
