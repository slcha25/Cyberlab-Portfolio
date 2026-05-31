
# Week 11 — Active Defense: Firewalls, IDS & EDR
**TKH Innovation Fellowship 2026 | Phase 1 | Cybersecurity**

![Student](https://img.shields.io/badge/Role-Student-blue?style=flat-square)
![Phase](https://img.shields.io/badge/Phase-1%20of%202-orange?style=flat-square)
![Weeks](https://img.shields.io/badge/Weeks-11-red?style=flat-square)
![Status](https://img.shields.io/badge/Portfolio-Complete-brightgreen?style=flat-square)
![Cohort](https://img.shields.io/badge/Cohort-Class%20of%202026-darkblue?style=flat-square)

## What I Learned

- In S31 Lab, I learned the difference between stateful firewall and stateless firewall.
Stateful firewall can remember all traffic conversation and detect the abnormal traffic. In addition, DMZ is a buffer zone to help us protect our database and webserver since it has internal and external firewall to isolate the extral attracks. UFW is the easy interface to translate our command into Iptables to implement the firewall protection and control the outbound traffic(Egress filter) in the system.

- In S32 Lab, I learned the different function of IDS and IPS and how to use Suricata to implement IDS and IPS. I also got hand-on practice to write the detection rules to filter the outbound traffic and detect the the attack traffic, how to analyze the fast.log to confirm the attrack. 

- In S33 lab, I learned the different functions of sysmon, Procmon, and Procdump. I realized how EDR is crucial to detect the unusual behvior in the system and network. In addition, I learned how to determine some different malicious attacks.**

- In this week, we learned defense sides' detection, how the firewalls to monintor and block the traffic, how to isolate the suspicious traffic through implement Linux firewall engine( iptables), or use suricate to run IDS and IPS to monitor the network, and final step, how to use microsoft's defensive tools including sysmon, procmon and Procdump to record the attackers' activity inside the system and analzye their behvior through fast.log for further investgation,etc.

## Artifacts
**Lab S31: firewall rules ── firewall_config.sh (Firewall rules & traffic filtering)**
 -   deploy a fast host-based firewall. Then, I will engineer complex DMZ routing rules to prevent lateral movement from a compromised external server to the internal database

**Lab S32: Suricata alert analysis ── custom_ids.rules (Intrusion detection & alert analysis)**
  - write custom intrusion signatures for a monitored web server. After that, implement the rule script and deploy the IDS sensor, and launch simulated attacks to confirm the defenses trigger

**Lab S33: EDR demonstration ── edr_policy.xml (Endpoint detection & response)**
  - depoly Sysmon and uncover what an obfuscated PowerShell is running and write XML detection policy to delete the shawdow behvior. 

## Artifact filename
  - Lab S31 ── firewall_config.sh (Firewall rules & traffic filtering)
  - Lab S32 ── custom_ids.rules (Intrusion detection & alert analysis)
  - Lab S33 ── edr_policy.xml (Endpoint detection & response)

## Challenges & How I Solved Them

- When I was doing the lab 32, I got stuck at the phrase 1 & phrase 2 tasks. after I deploy the sensor, It can't tigger the ICMP & Malware Signature trap that I implemented at the beginning. I need to give the premssion (root) to run the Suricata container to trigger the custom rules which the instructor set up in the enviroment. 
Since there is no permission to trigger the custom rules. The fast.log doesn't have any record, so I use sudo chmod 644 ~/IDS_Lab/custom_ids.rules and sudo chmod 777 ~/IDS_Lab/logs to give the permssion to run the container and trigger the event. I also have another issues for phase 2, after I fixed the permssion issue, I found fast.log don't have any record about malware activites since the docker container didn't connect to my ip-net, so I run the container through my network interface to trigger the trap and complete this lab.

## Reflection
- In this week lab, I leaned how different protecting tools to prevent the outside attacker and realize the different functions of IDS,IPS,Sysmon, UFW, iptables, sysmon, Procmon, and Procdump,etc. After I did the labs, I learned how to give the permission to the docker container to implement the events and make it trigger the event. As defense side, I need to learn how to analyze the attracks' behavior and monitor their reaction. Even though I can't stop at this time, I can investigate the log to implement the prevention enviorment to detect future attrack and keep it in our database.

## References
- markruss. (2024, July 23). Sysmon - Windows Sysinternals. Learn.microsoft.com. https://learn.microsoft.com/en-us/sysinternals/downloads/sysmon
- 8.1. Rules Format — Suricata 7.0.2-dev documentation. (n.d.). Docs.suricata.io. https://docs.suricata.io/en/latest/rules/intro.html
- Anicas, M., & Heidi, E. (2021, December 15). UFW Essentials: Common Firewall Rules and Commands. DigitalOcean. https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands

‌
