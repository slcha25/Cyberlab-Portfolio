# CLOUDNANO REMEDIATION PLAN
**Operator:** ## TOP 5 CRITICAL FIXES
*(From the 20 raw findings, select the 5 that pose the greatest ACTUAL risk. Explain your reasoning.)*

1. **Unauthenticated AWS S3 Bucket (Customer PII)	Highest impact + high likelihood
**
   * **Justification:** CVSS 9.8 - No authetication means anyone with URL can access it,
			attacker constantly scan for open S3 Bucket

2. **Remote Code Execution(Apace Struts)**Internet-facing + easy to exploit
   * **Justification:** Apache Struts RCE vulnerabilities have public exploits
			Critical (10/10) - Full server takeover, data breach, ransomeware, or crypto mining.

3. **SQL Injection (Customer Database Portal)** Direct path to customer data
   * **Justification:** (7/10) High - Login pages are prime targest. Automated SQLi tools (sqlmap) exit.
			The login paige is the most attacked endpoint on any web applicaiton. SQL injection
			here allows an attacker to bypass authentication entirely - no password need. 

4. **SMBv1 Enabled (Internal HR File server)**Old protocol + ransomware favorite
   * **Justification:** SMBv1 is a 30-year-old protocol with known, wormable vulnerabilities. The 2017 WannaCry ransomware attack used EternalBlue (an SMBv1 exploit) to infect 200,000+ computers in days. While this server is internal, an attacker who compromises any internal machine (via phishing or a pivot) can use SMBv1 to move laterally to the HR file server.
			 HR servers contain employee PII, contracts, and financial data. Disable SMBv1 immediately.

5. **Default Credentials (Internal Router)**Score is 10.0 but air-gapped → lower likelihood
   * **Justification:** While the CVSS score is 10.0, the air-gapped label significantly reduces likelihood. An external attacker cannot reach this router directly. 
			However, this becomes critical if another vulnerability (like the RCE on the internet-facing server) 
			allows a pivot into the internal network. Once inside, the attacker finds a router with 'admin/admin'
			 credentials and takes over the entire internal network. Fix this now before it becomes exploitable.

