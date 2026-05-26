# TITANCORP: PERIMETER ASSESSMENT REPORT
**Operator:** **Target Subnet:** 172.88.0.0/24

## PHASE 1: ACTIVE ENUMERATION (NMAP)
*(List the live IPs discovered and their running services/versions)*
* **Host 1 ([172.88.0.10]):** [http nginx 1.14.2]
* **Host 2 ([172.88.0.15]):** [Not shown]
* **Host 3 ([172.88.0.20]):** [http Apache httpd 2.4.66((Unix))]

## PHASE 2: VULNERABILITY AUDIT (NIKTO)
*(Run Nikto against the TWO web servers discovered above. List one major finding for each.)*
* **Web Server 1 Finding:** [X-Frame-Options header is not present, Anti-clickJacking, the attacker may use it to attrack]
* **Web Server 2 Finding:** [OSVDB-877, Http is active and can be traced, the host is vulnerable to XST]

## PHASE 3: RISK TRIAGE
*(Review your findings. Identify the SINGLE highest-risk vulnerability across the entire DMZ. Justify why it is the top priority using the Likelihood x Impact formula.)*

* **Top Priority Remediation:** [OSVDB-877, high risk vulnerability+ high impact]
* **Justification:** [Attacker can use this vulnerable bug to do cross-site tracing(XST) attack. If the website has cookie
		      or need to Http credential. Attacker can send the trace request through JavaScript and steal your session id and password.
		      If you want to fix this issue. In the setting of Apache, turn off TraceEnable]
