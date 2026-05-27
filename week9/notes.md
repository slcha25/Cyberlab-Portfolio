![Week](https://img.shields.io/badge/Week-09-blue?style=plastic)

# Week 09 —  The Application Layer
**TKH Innovation Fellowship 2026 | Phase 1 | Cybersecurity**

## What I Learned

- In S25 Lab, I learned how to exfiltrate and realized the whole workflow of SQL injection, how to prevent SQL injection.

- In S26 Lab, I learned the differentiate attacker between client-side and server-side, how to execute reflected XSS, deploy stored XSS and architect CSRF. At last, I learned the prevention of XSS and CSRF

- In S27 lab, I learned how to utilize Burp Sutie to do Man-in-the-middle attack, exploit BOLA attack, the vulnerability of business logic, how the rate limiting to prevent the attack, and the prevenion of BOLA, business logic.

- In this week, I learned as red team, how to exploit the attacks through SQL injection, XSS, CSRF, BOLA and business logics. The whole workflow of attack and how they work; meanwhile, the prevention of attacks work to block hidden risk.

## Artifacts
**Lab S25: SQL Injection Analysis ── sqli_report.txt (SQL Injection exfiltration)**
 - break a login portal using SQL Injection, map a hidden database schema, and extract secret information from a vulnerable employee directory

**Lab S26: Cross-Site Scripting (XSS) & Cross-Site Request Forgery (CSRF) ── xss_payloads.txt (The Poisoned Browser)**
  - attacked the server - inject malicious JavaScript into live web pages, steal admin session cookies, and craft a CSRF attack link that forces fund transfers without the victim ever knowing.

**Lab S27: API Security — Attack & Defence ── api_audit.log (The Invisible Logic)**
  - intercept its traffic to view a private admin profile and brute-force a hidden discount code buried in the checkout logic

## Artifact filename
  - Lab S25 ── sqli_report.txt (SQL Injection exfiltration)
  - Lab S26 ── xss_payloads.txt (XSS & CSRF attack)
  - Lab S27 ── api_audit.log (API Security — Attack & Defence)

## Challenges & How I Solved Them

- When I was doing the lab 32, I got stuck at the phrase 1 & phrase 2 tasks. after I deploy the sensor, It can't tigger the ICMP & Malware Signature trap that I implemented at the beginning. I need to give the premssion (root) to run the Suricata container to trigger the custom rules which the instructor set up in the enviroment. 
Since there is no permission to trigger the custom rules. The fast.log doesn't have any record, so I use sudo chmod 644 ~/IDS_Lab/custom_ids.rules and sudo chmod 777 ~/IDS_Lab/logs to give the permssion to run the container and trigger the event. I also have another issues for phase 2, after I fixed the permssion issue, I found fast.log don't have any record about malware activites since the docker container didn't connect to my ip-net, so I run the container through my network interface to trigger the trap and complete this lab.

## Reflection
- In this week lab, I leaned how different protecting tools to prevent the outside attacker and realize the different functions of IDS,IPS,Sysmon, UFW, iptables, sysmon, Procmon, and Procdump,etc. After I did the labs, I learned how to give the permission to the docker container to implement the events and make it trigger the event. As defense side, I need to learn how to analyze the attracks' behavior and monitor their reaction. Even though I can't stop at this time, I can investigate the log to implement the prevention enviorment to detect future attrack and keep it in our database.

## References
- markruss. (2024, July 23). Sysmon - Windows Sysinternals. Learn.microsoft.com. https://learn.microsoft.com/en-us/sysinternals/downloads/sysmon
- 8.1. Rules Format — Suricata 7.0.2-dev documentation. (n.d.). Docs.suricata.io. https://docs.suricata.io/en/latest/rules/intro.html
- Anicas, M., & Heidi, E. (2021, December 15). UFW Essentials: Common Firewall Rules and Commands. DigitalOcean. https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands

