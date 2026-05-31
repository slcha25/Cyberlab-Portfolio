# TKH Innovation Fellowship — Phase 1 Cybersecurity

![Student](https://img.shields.io/badge/Role-Student-blue?style=flat-square)
![Phase](https://img.shields.io/badge/Phase-1%20of%202-orange?style=flat-square)
![Weeks](https://img.shields.io/badge/Weeks-01--12-red?style=flat-square)
![Status](https://img.shields.io/badge/Portfolio-Complete-brightgreen?style=flat-square)
![Cohort](https://img.shields.io/badge/Cohort-Class%20of%202026-darkblue?style=flat-square)

```
  ____  _  _  ____  ____  ____  __      __   __  ____
 / ___)( \/ )(  _ \( ___)(  _ \(  )    /__\ (  )(  _ \
 \___ \ \  /  ) _ < )__)  )   / )(__  /(__)\  )(  ) _ <
 (____/ (__) (____/(____)(___)(____)(__)(__) (__)(____/

  Cybersecurity  ·  Phase 1  ·  Spring 2026
```

> *"Stay Hungry, Stay Foolish."* — Steve Jobs

---

## 👋 Welcome

This is my student artifact repository for Phase 1 of the TKH Innovation Fellowship Cybersecurity program. Every week I push the work I build in class — scripts, lab outputs, notes, and documentation — so there is a living record of how far I have come.

I came into this program as a former Math, Economics, and Accounting teacher with a full-stack development background. Cybersecurity was new territory. This repository is proof that it is possible to start from zero and build something real, week by week.

|             |                                                                             |
| ----------- | --------------------------------------------------------------------------- |
| **Student** | Sok Leng Chan                                                               |
| **Program** | The Knowledge House · Cybersecurity                                         |
| **Phase**   | 1 of 2 · Jan - May 2026                                                     |
| **Cohort**  | Class of 2026                                                               |
| **GitHub**  | [slcha25/Cyberlab-Portfolio](https://github.com/slcha25/Cyberlab-Portfolio) |

---

## 📁 Repository Structure

```
Cyberlab-Portfolio/
├── week-01/
│   ├── discovery.txt
│   ├── harden.sh
│   ├── threat_ips.txt
│   ├── final_threat_report.txt
│   └── notes.md
├── week-02/
│   ├── network_audit.txt
│   ├── subnet_blueprint.txt
│   ├── protocol_audit.txt
│   ├── tlab_report.txt
│   └── notes.md
├── week-03/
│   ├── port_check.py
│   ├── brute_detector.py
│   ├── system_auditor.py
│   ├── reflection.md
│   ├── incident_response.py
│   ├── threat_report.json
│   └── notes.md
├── week-04/
│   ├── sandbox_report.txt
│   ├── deploy_web.sh
│   ├── docker-compose.yml
│   ├── hyperstack_audit.json
│   └── notes.md
├── week-05/
│   ├── onboard_engineers.ps1
│   ├── gpo_audit.ps1
│   ├── unified_identity.png
│   ├── tlab5_report.txt
│   └── notes.md
├── week-06/
│   ├── readiness_check.log
│   ├── practical_exam_report.txt
│   ├── HardenedOutpost_SAD.pdf
│   └── notes.md
├── week-07/
│   ├── ThreatProfile_CloudNano.md
│   ├── nmap_scan_results.txt
│   ├── remediation_plan.md
│   ├── Perimeter_Assessment.md
│   └── notes.md
├── week-08/
│   ├── exploit_verification.png
│   ├── escalation_path.txt
│   ├── pivot_success.png
│   ├── Deep_Pivot_Report.md
│   └── notes.md
├── week-09/
│   ├── sqli_report.txt
│   ├── xss_payloads.txt
│   ├── api_audit.log
│   ├── OmniPortal_Assessment.md
│   └── notes.md
├── week-10/
│   ├── collection_log.txt
│   ├── forensic_findings.md
│   ├── attack_timeline.csv
│   ├── Incident_Response_Report.md
│   └── notes.md
├── week-11/
│   ├── firewall_config.sh
│   ├── custom_ids.rules
│   ├── edr_policy.xml
│   ├── Operation_Fortress_Report.md
│   └── notes.md
├── week-12/
│   ├── portfolio_audit.md
│   ├── tepp_postmortem.md
│   └── notes.md
└── README.md
```

---

## 🗓️ Week Tracker

| Week | Dates       | Theme                                                                   | Status     |
| ---- | ----------- | ----------------------------------------------------------------------- | ---------- |
| 01   | Mar 9–11    | Terminal · Permissions · Stream Editing · Git                           | ✅ Complete |
| 02   | Mar 16–18   | Networking · Subnetting · Protocol Interrogation                        | ✅ Complete |
| 03   | Mar 23–25   | Python Scripting · Port Scanner · Brute Force Detector · System Auditor | ✅ Complete |
| 04   | Mar30–Apr 1 | Virtualization · Docker · Container Security · Network Segmentation     | ✅ Complete |
| 05   | Apr 6–8     | Identity · Active Directory · Windows Server Core                       | ✅ Complete |
| 06   | Apr 13–15   | Phase 1 Midterm · Hybrid Architecture · Secure Deployment               | ✅ Complete |
| 07   | Apr 20–22   | Reconnaissance · Nmap · Vulnerability Analysis                          | ✅ Complete |
| 08   | Apr 27–29   | Exploitation Frameworks · CVE · Privilege Escalation · Pivoting         | ✅ Complete |
| 09   | May 4–6     | Web Application Security · SQL Injection · XSS · API Security           | ✅ Complete |
| 10   | May 11–13   | Digital Forensics · Memory Analysis · Disk Investigation · SIEM         | ✅ Complete |
| 11   | May 18–20   | Active Defense · Firewalls · IDS/IPS · EDR                              | ✅ Complete |
| 12   | May 27–29   | Phase 1 Final · Portfolio Audit · TEPP Postmortem                       | ✅ Complete |

---

## 🚀 Getting Started

**Clone the repo**
```bash
git clone https://github.com/slcha25/Cyberlab-Portfolio.git
cd Cyberlab-Portfolio
```

**Push your work**
```bash
git add .
git commit -m "week-XX: added [filename] — [what it does]"
git push origin main
```

---

## 📚 Week 01 — Linux Fundamentals & Filesystem Navigation

### 🌱 S01 · Terminal Genesis
Your first night in a headless Linux environment. No GUI. Just you and the terminal.

Key skills: `ls` `cd` `pwd` `mkdir` `cat` `find` · FHS navigation · SSH · Git setup

### 🔐 S02 · The Keymaster
Who can read it? Who can write it? Who can run it? Linux answers with nine bits and three letters: `rwx`.

Key skills: `chmod` `chown` `ls -la` · SUID auditing · Principle of Least Privilege

### 🔍 S03 · Stream Editing & Threat Hunting
10,000 lines of web server logs. Three attackers buried in the noise. One pipeline to find them all.

Key skills: `grep` `awk` `sed` `sort` `uniq` · stdout redirection · pipeline chaining

### 🎯 TLAB-01 · Operation Clean Sweep
Full threat hunt mission. Extracted malicious IPs from web logs, correlated with auth logs, and filed a structured threat report.

---

## 📡 Week 02 — Networking & Protocol Analysis

### 🌐 S04 · Operation Broken Link
Your machine is blind. Restore the wire. Bring the interface up and manually add the default gateway route.

Key skills: `ip link` `ip addr` `ip route` · Layer 1–3 recovery

### 🧮 S05 · Operation Grid Lock
You can see the network but cannot talk to the gateway. Your subnet mask has isolated you mathematically.

Key skills: `ipcalc` · binary conversion · CIDR · subnet masks

### 🔌 S06 · Operation Hidden Door
DNS poisoning. A cloaked local service. Find it, fix it, document it.

Key skills: `ss -tuln` `curl -I` `dig` `cat /etc/hosts` · TCP vs UDP

### 🎯 TLAB-02 · Operation Blackout
Full remediation mission across Layers 3, 4, and 7. Restored subnet, cleansed DNS poisoning, captured TCP 3-way handshake as forensic proof.

---

## 🐍 Week 03 — Python Scripting for Security

### 🔭 S07 · The Automation Forge
No Nmap. Just Python and raw sockets. Write a script that checks whether Port 22 is open across a list of target IPs — automatically.

Key skills: `python3` · `socket` · `for` loops · `connect_ex`

### 🚨 S08 · The Paper Trail
Parse a simulated auth log. Extract every failed login attempt. Write the findings to a clean report — automatically.

Key skills: `python3` · file I/O · `with open()` · `try/except` · string matching

### 🔎 S09 · The Automation Pivot
Give Python the keys to the OS. Run system commands from inside a script, capture the output, and export a structured JSON security alert.

Key skills: `python3` · `subprocess` · `json` · process interrogation

### 🎯 TLAB-03 · Operation Automated Hunt
Automated incident response pipeline built entirely in Python. Used `subprocess` to run `grep` programmatically, parsed raw output to extract attacker IPs, and exported a structured JSON alert ready for SIEM ingestion.

---

## 🐳 Week 04 — Virtualization & Containers

### 🏖️ S10 · Sandbox Detonation
Configured a Host-Only network adapter to air-gap the VM before detonating a simulated malware payload. Documented isolation verification and explained why Bridged mode is never acceptable for malware analysis.

Key skills: VirtualBox network modes · Host-Only · sandbox isolation

### 🚢 S11 · The Disposable Web Server
Deployed, modified, and destroyed an nginx container. Demonstrated the full container lifecycle and automated the deployment sequence in a reusable bash script.

Key skills: `docker run` `docker exec` `docker stop` `docker rm` · container lifecycle

### 🔒 S12 · The Air-Gapped Stack
Deployed a multi-container stack using Docker Compose with explicit network segmentation. Backend database isolated with `internal: true` — provably air-gapped from the internet.

Key skills: `docker-compose` · network segmentation · `internal: true` · Defense in Depth

### 🎯 TLAB-04 · Operation Fortified Node
Evicted a rogue container, built a three-tier stack from scratch with public and private network segmentation, verified port isolation with nmap, and produced a machine-readable JSON audit report.

---

## 🪪 Week 05 — Identity, Access & Active Directory

### 👥 S13 · The Onboarding Engine
Automated user provisioning with PowerShell. Created new engineer accounts, set passwords, and assigned them to the correct Organizational Units — all from a single script.

Key skills: `PowerShell` · `New-ADUser` · `Add-ADGroupMember` · Organizational Units

### 🛡️ S14 · The Policy Enforcer
Audited Group Policy Objects across a Windows domain. Mapped existing policies, identified gaps, and documented the security posture of the identity environment.

Key skills: `Get-GPO` `Get-GPReport` · GPO inheritance · Security baselines

### 🗺️ S15 · Unified Identity Architecture
Mapped the full identity and access management model across on-premises Active Directory and cloud systems, producing a unified identity diagram for enterprise review.

### 🎯 TLAB-05 · Identity Capstone
End-to-end identity operation: provisioned users, enforced group policies, and produced a unified identity architecture diagram and written report.

---

## 🏛️ Week 06 — Phase 1 Midterm

### ✅ S16 · Readiness Check
Pre-exam audit of all skills and tools covered in Weeks 01–05. Verified working environment, tool availability, and knowledge gaps before the practical exam.

### 🎓 S17 · Practical Exam
Timed practical examination covering Linux operations, networking, Python scripting, containerization, and identity management.

### 📄 S18 · HardenedOutpost — Security Architecture Document
Produced a professional Security Architecture Document (SAD) in APA format describing the full hardened outpost design, defense rationale, and risk assessment.

---

## 🔭 Week 07 — Reconnaissance & Vulnerability Analysis

### 🕵️ S19 · Threat Profiling
Built a full threat profile for a fictional target organization (CloudNano). Identified likely threat actors, attack vectors, and high-value assets before a single packet was sent.

Key skills: OSINT · threat modeling · attacker profiling

### 📡 S20 · Nmap Operations
Scanned a live target network with Nmap. Identified live hosts, open ports, running services, and software versions — all without being given target details.

Key skills: `nmap -sV` `-sC` `-O` `-p-` · service enumeration · OS fingerprinting

### 🩹 S21 · Remediation Planning
Analyzed discovered vulnerabilities and produced a prioritized remediation plan, ranking issues by severity using CVSS scores and business impact.

Key skills: CVSS scoring · vulnerability triage · remediation documentation

### 🎯 TLAB-07 · Perimeter Assessment
Full reconnaissance engagement against a simulated enterprise perimeter. Delivered a professional threat profile, nmap findings, and prioritized remediation plan.

---

## 💥 Week 08 — Exploitation Frameworks

### ⚔️ S22 · First Contact
Exploited a critical Samba CVE using Metasploit. Identified the correct CVE, selected the right module, configured the payload, and verified successful code execution on the target.

Key skills: `msfconsole` · CVE analysis · exploit module selection · `exploit/linux/samba/`

### 📈 S23 · Escalation Path
Gained initial foothold as a low-privilege user, then escalated to root through a misconfigured sudo permission. Documented every step of the escalation path for forensic review.

Key skills: `sudo -l` · SUID binaries · privilege escalation techniques

### 🔀 S24 · The Pivot
Used a compromised external server as a pivot point to reach internal systems behind the firewall — systems that were not directly accessible from the internet.

Key skills: port forwarding · SSH tunneling · network pivoting

### 🎯 TLAB-08 · Deep Pivot Report
Full red team engagement: initial exploitation, privilege escalation, and lateral movement across a segmented network. Delivered a professional attack narrative with evidence.

---

## 🕸️ Week 09 — Web Application Security

### 💉 S25 · SQL Injection
Exploited SQL injection vulnerabilities in a live web application. Bypassed authentication, extracted database records, and documented the exact payloads used.

Key skills: SQL injection · `'OR 1=1--` · UNION-based extraction · parameterized queries

### 📜 S26 · XSS & CSRF
Executed Reflected XSS and Stored XSS attacks. Planted persistent malicious scripts to steal session cookies. Demonstrated CSRF by crafting a request that performs unauthorized actions on behalf of a victim.

Key skills: DOM manipulation · `<script>` injection · session hijacking · CSRF tokens

### 🔌 S27 · API Security Audit
Intercepted RESTful API traffic with Burp Suite. Exploited BOLA/IDOR to access other users' data by manipulating object identifiers. Abused business logic to bypass discount restrictions.

Key skills: Burp Suite · BOLA/IDOR · JSON manipulation · rate limiting

### 🎯 TLAB-09 · OmniPortal Assessment
Full web application security assessment. Identified and exploited SQL injection, XSS, and API vulnerabilities in a simulated enterprise portal. Delivered a professional penetration test report.

---

## 🔬 Week 10 — Digital Forensics & Incident Response

### 💾 S28 · Memory Analysis
Used Volatility to analyze a Windows memory dump. Identified hidden malicious processes, suspicious network connections, and attacker tools resident in RAM.

Key skills: `volatility` · `pslist` `netscan` `dlllist` · memory forensics · IOC extraction

### 🧩 S29 · Disk Forensics
Used Cyber Triage and The Sleuth Kit to investigate a compromised disk image. Recovered deleted files, analyzed the Master File Table (MFT), and reconstructed the attacker's timeline.

Key skills: `fls` `icat` `fsstat` · MFT analysis · Cyber Triage · deleted file recovery

### 📊 S30 · SIEM & Attack Timeline
Ingested raw logs into a SIEM environment and used KQL queries to filter millions of events down to a precise attack timeline. Identified the entry point, lateral movement, and exfiltration event.

Key skills: KQL · SIEM log analysis · `attack_timeline.csv` · SOC workflow

### 🎯 TLAB-10 · Incident Response Report
End-to-end incident response engagement. Collected forensic evidence, analyzed memory and disk artifacts, built a complete attack timeline, and delivered a professional incident response report.

---

## 🛡️ Week 11 — Active Defense: Firewalls, IDS & EDR

### 🔥 S31 · Firewall Engineering
Designed and deployed a host-based firewall using UFW and iptables. Engineered DMZ routing rules to prevent lateral movement from a compromised external server to the internal database.

Key skills: `ufw` · `iptables` · DMZ architecture · Egress filtering · stateful vs stateless

### 🚨 S32 · IDS with Suricata
Wrote custom intrusion detection signatures for a monitored web server. Deployed the IDS sensor, launched simulated attacks, and confirmed detections via `fast.log` analysis.

Key skills: Suricata · custom `.rules` · `fast.log` · ICMP trap · malware signature detection

### 🔍 S33 · EDR & Endpoint Monitoring
Deployed Sysmon to uncover what an obfuscated PowerShell script was doing behind the scenes. Wrote an XML detection policy to catch the shadow behavior and block further execution.

Key skills: Sysmon · Procmon · Procdump · `edr_policy.xml` · obfuscated PowerShell detection

### 🎯 TLAB-11 · Operation Fortress
Full active defense engagement across all three layers: firewall perimeter, network intrusion detection, and endpoint monitoring. Delivered the Operation Fortress Report.

---

## 🏁 Week 12 — Phase 1 Final Project

### 📋 S35 · Portfolio Audit
Systematic audit of all 12 weeks of submitted work. Verified folder structure, artifact completeness, notes.md presence, and repository standards compliance.

### 📝 S36 · TEPP Postmortem
Produced a professional-grade post-mortem document in APA style covering all four phases of a red-to-blue operation: reconnaissance, exploitation, forensics, and hardening.

### 🎯 TLAB-12 · Phase 1 Final Submission
Full Phase 1 capstone submission demonstrating end-to-end security practitioner capability.

---

## 💡 Core Concepts

**The CIA Triad**

| Property | Question It Answers | Example |
|----------|--------------------|----|
| Confidentiality | Who can see it? | `chmod 600 secrets.txt` |
| Integrity | Has it been tampered with? | Git commit hashes |
| Availability | Can authorized users access it? | Uptime, backups, failover |

**The Holy Trinity of Text Processing**
```
grep  →  finds lines that match a pattern       (The Scalpel)
sed   →  finds and replaces text on the fly     (The Laser)
awk   →  extracts specific columns from data    (The Formatter)
```

**Git as an Accountability Tool**

Every `git commit` creates a cryptographic hash — a tamper-evident, timestamped, attributed record of exactly what changed and when. That is Accounting — the third pillar of the AAA framework.

**Defense in Depth**

No single security control is sufficient. The work across Weeks 04, 07, and 11 demonstrates how layering firewall rules, IDS signatures, and endpoint monitoring creates overlapping protection where a breach of one layer does not mean a breach of all.

**Python as a Security Force Multiplier**

The scripts in Week 03 (`brute_detector.py`, `incident_response.py`) demonstrate the foundational logic of SOAR platforms — ingest a log source, apply a detection rule, extract indicators of compromise, and export a structured alert. Automation turns a human-hours task into a seconds task.

**The Attacker's Journey (Unified Kill Chain)**

This portfolio follows the full 18-phase Unified Kill Chain — from reconnaissance and exploitation (Weeks 07–09) to persistence, lateral movement (Week 08), collection, and impact — and then documents the defender's counter at every layer (Weeks 10–11).

---

## 📖 References

- Chapple, M., Stewart, J. M., & Gibson, D. (2021). *ISC2 CISSP certified information systems security professional official study guide* (9th ed.). Sybex.
- NIST. (2022). *NICE Cybersecurity Workforce Framework* (NIST SP 800-181r1). National Institute of Standards and Technology.
- The Linux Documentation Project. (2024). *The Linux system administrator's guide*. https://tldp.org
- Suricata Project. (n.d.). *Rules format — Suricata 7.0 documentation*. https://docs.suricata.io/en/latest/rules/intro.html
- Russinovich, M. (2024). *Sysmon — Windows Sysinternals*. Microsoft Learn. https://learn.microsoft.com/en-us/sysinternals/downloads/sysmon

---

*Built week by week · TKH Innovation Fellowship 2026 · Sok Leng Chan*
