![Week](https://img.shields.io/badge/Week-07-blue?style=plastic)

# Week 07 —  The Application Layer
**TKH Innovation Fellowship 2026 | Phase 1 | Cybersecurity**

## What I Learned

- In S22 Lab, I learned how to establish a Netcat reverse shell, deploy the metasploit framework, execute the exploit by using usermap_script.

- In S23 Lab, I learned what escalation is, how to exploit Linux sudo misconfigurations by using GTFOBins database, identify windows vulnerabilities and execute service hijacking.

- In S24 lab, I learned how to manipulate Linux scheduling to automatically spawn reverse shells, execute lateral movement, and configure subnet routing. 

- In this week, I learned as red team, how to exploit the windows vulnerabilities through metaploit and acheieve a root shell, install the persistent backdoor for keeping control the victims' device. 

## Artifacts
**Lab S22: Execute Manual Exploitation ── exploit_verification.png  (Execute Manual Exploitation)**
 - utilize the Metasploit Framework to verify this vulnerability and achieve a "Root Shell."

**Lab S23: Privilege escalation ── escalation_path.txt (perform vertical privilege escalation)**
  -  weaponize misconfigurations to escalate your privileges to total control.

**Lab S24: Pivot operation — hidden network scanned ── pivot_success.png (Post-Exploitation)**
  - compromised Web-Server and install a persistent backdoor, then use the server as a bridgehead to attack Databaseon the private 10.0.9.0/24 subnet.

## Artifact filename
  - Lab S22 ── exploit_verification.png (Execute Manual Exploitation)
  - Lab S23 ── escalation_path.txt (perform vertical privilege escalation)
  - Lab S24 ── pivot_success.png (Post-Exploitation)

## Challenges & How I Solved Them

- When i was doing lab 22, the chanllege is the old version of Samba which was setting up in the docker enviorment, I can't trigger the event because old version of Samba doesn't work, so I changed my permission as root and manuelly create a new docker enviorment with new version of Samba (is_known_pipename) to implement the events.  

## Reflection
- In this week lab, I realized the whole workflow from observation to excalation, exploit the windows vulnerabilities through metaploit and create a docker container to install the backdoor on the victims' device. After that, how to keep persistent controlling the device on the lateral movement.

## References
- pentestmonkey. (n.d.). Reverse Shell Cheat Sheet | pentestmonkey. Pentestmonkey.net. https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet
- GTFOBins. (n.d.). Gtfobins.github.io. https://gtfobins.github.io/
- Crontab.guru - The cron schedule expression editor. (n.d.). Crontab.guru. https://crontab.guru/

‌

