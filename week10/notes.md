
# Week 10 — Digital Forensics & Incident Response
**TKH Innovation Fellowship 2026 | Phase 1 | Cybersecurity**

![Student](https://img.shields.io/badge/Role-Student-blue?style=flat-square)
![Phase](https://img.shields.io/badge/Phase-1%20of%202-orange?style=flat-square)
![Weeks](https://img.shields.io/badge/Weeks-10-red?style=flat-square)
![Status](https://img.shields.io/badge/Portfolio-Complete-brightgreen?style=flat-square)
![Cohort](https://img.shields.io/badge/Cohort-Class%20of%202026-darkblue?style=flat-square)

## What I Learned

- In S28 Lab, I learned how to use Volatitlity to detect the malcious activities in the systme and know the different workflow between NIST framework and Sans framework. I study the all 6 stages of incident reponse and know the importance for chain of custody to prove the evidence of attracks. Live Triage using native tools to find an active intruder without destroying volatile data

- In S29 Lab, I learned the difference between Cyber Triage. Sleuth Kit & Disk forensics. Cyber Triage is a user-friendly tools to scan your device and find out the malware or attrack trace in your system.However, it is not deeply seeking the system because the attracker may run the normal operation, then, you can't detect their behavior, so we need to sleuth kit to dig deep the issue in the system. I study the entire workflow of Cyber Triage and Sleuth Kit. At last, I did the lab to dig into the system memory and find the hidden threats in the hard drive.

- In S30 lab, I learned the functions of SIEM, SOC, EDR, XDR,SOAR & KQL, I also realize the different logs have the different records including VPN logs, Syslog, Window Eventlog, Auth log, Firewall log. Then, I know what log injection is and how to set up the first 3 steps of SIEM. KOL is search language used to filter millions of logs. It is important that I know how to filter the lot of noise(logs) to figure out the attrack path and sum up them , after that, report the incident to the corresponding company.

- In this week, I learned how to investigate the attracker's activites in the system through live tools(Cyber Triage) and learn using Sleuth Kit to dig deep for uncover activites if i can't find from live tool. After I collect the incident logs from the system and we can sum up and organize the whole attracking journal. Finally, report this incident to SIEM and react to SOAR to stop the attrack and keep the record in their database to prevent the further attrack.

## Artifacts
**Lab S28: forensic timeline ── collection_log.txt (Chain of custody & live triage)**
 -   perform rapid triage on the live system without destroying volatile data, then cryptographically lock the collected forensic artifacts to establish the Chain of Custody.

**Lab S29: disk image trail analysis── forensic_findings.md (Disk forensics)**
  - Carve the system's memory to find the active hidden threat, then reach past the operating system entirely to recover the deleted malware payload from raw disk sectors and document the full forensic picture

**Lab S30: memory dump extraction ── attack_timeline.csv (Memory forensics)**
  - depoly Sysmon and uncover what an obfuscated PowerShell is running and write XML detection policy to delete the shawdow behvior. 

## Artifact filename
  - Lab S28 ── collection_log.txt (Chain of custody & live triage)
  - Lab S29 ── forensic_findings.md (Disk forensics)
  - Lab S30 ── attack_timeline.csv (Memory forensics)

## Challenges & How I Solved Them
- When I was doing the lab 29, i got stuck on finding the any information from recovered_malware.txt.
After that, I found that the size of Resume.exe is 0 (the initial malware document), it has nothing inside, so i can't find any information for that.I manually create a malware test.txt. to implement and remove Resume.exe. again, then, complete this lab task.

- When I was doing the lab 30, I have issue about my VM that is not enough space to run the docker and kibana. so I need to clean up my VM and turn off, After that, reset my VM storage(make it bigger enough) to run docker container and Kibana.At last, resize VM, I have issues to connect VS code through SSH, so I need to reconnect SSH. I check my ssh connection and ip address to confirm whether my VM is connecting to my host device.
  
## Reflection
- In this week lab, I realized the different digital forensic methods to search the malcious activties in the system. I know the whole cycle from collection to response steps. I realized the logical thinking is very important to do the investigation since we need to determine which logs are connecting to the unhidden malcious activities in the system. I need to come up with different piece of logs to make the whole story for the attrack. 

## References
- Cranford, J. (2023, July 6). Incident Response Plan: Frameworks and Steps | CrowdStrike. Crowdstrike. https://www.crowdstrike.com/en-us/cybersecurity-101/incident-response/incident-response-steps/
- KQL | Elastic Docs. (2025). Elastic.co. https://www.elastic.co/docs/explore-analyze/query-filter/languages/kql
- Cranford, J. (2023, July 7). Incident Response Steps: How to Respond to Data Breach. Crowdstrike.com. https://www.crowdstrike.com/cybersecurity-101/incident-response/incident-response-steps/

‌

