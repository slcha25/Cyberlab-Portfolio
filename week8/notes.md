![Week](https://img.shields.io/badge/Week-08-blue?style=plastic)

# Week 08 —  The Application Layer
**TKH Innovation Fellowship 2026 | Phase 1 | Cybersecurity**

## What I Learned

- In S22 Lab, I learned how to exfiltrate and realized the whole workflow of SQL injection, how to prevent SQL injection.

- In S23 Lab, I learned the differentiate attacker between client-side and server-side, how to execute reflected XSS, deploy stored XSS and architect CSRF. At last, I learned the prevention of XSS and CSRF

- In S24 lab, I learned how to utilize Burp Sutie to do Man-in-the-middle attack, exploit BOLA attack, the vulnerability of business logic, how the rate limiting to prevent the attack, and the prevenion of BOLA, business logic.

- In this week, I learned as red team, how to exploit the attacks through SQL injection, XSS, CSRF, BOLA and business logics. The whole workflow of attack and how they work; meanwhile, the prevention of attacks work to block hidden risk.

## Artifacts
**Lab S22: SQL Injection Analysis ── sqli_report.txt (SQL Injection exfiltration)**
 - break a login portal using SQL Injection, map a hidden database schema, and extract secret information from a vulnerable employee directory

**Lab S23: Cross-Site Scripting (XSS) & Cross-Site Request Forgery (CSRF) ── xss_payloads.txt (The Poisoned Browser)**
  - attacked the server - inject malicious JavaScript into live web pages, steal admin session cookies, and craft a CSRF attack link that forces fund transfers without the victim ever knowing.

**Lab S24: API Security — Attack & Defence ── api_audit.log (The Invisible Logic)**
  - intercept its traffic to view a private admin profile and brute-force a hidden discount code buried in the checkout logic

## Artifact filename
  - Lab S22 ── sqli_report.txt (SQL Injection exfiltration)
  - Lab S23 ── xss_payloads.txt (XSS & CSRF attack)
  - Lab S24 ── api_audit.log (API Security — Attack & Defence)

## Challenges & How I Solved Them

- When i was doing lab 27, I followed the instruction until I found my VM is full, I must clean up in order to complete the task, then I clean up my VM space, however, after i cleaned up, my brower couldn't open the link, so even though i installed Burp Sutie, I still can't use it, I only can use “curl” to complete the task in VM. 

## Reflection
- In this week lab, I leaned how different exfiltration to doing the attack in server side including SQL Injection, XSS payload, CSRF and API attack. After I found out the vulnerability of exfiltration, I recongized the prevention of each attack including prepared statement, parameterized, input validation,least privilege, WAF(Web Application Firewall) for SQL injection, Input sanitization , CSP and output encoding for XSS prevention, etc.

## References
- OWASP. (2019). OWASP API Security - Top 10 | OWASP. Owasp.org. https://owasp.org/www-project-api-security/
- OWASP. (2025). SQL Injection Prevention · OWASP Cheat Sheet Series. Owasp.org; Owasp. https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html
- OWASP. (2021). Cross Site Scripting Prevention - OWASP Cheat Sheet Series. OWASP.org; OWASP. https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html

‌

