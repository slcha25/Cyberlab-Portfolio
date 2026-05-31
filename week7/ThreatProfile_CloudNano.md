# TARGET THREAT PROFILE: CloudNano 
**Classification:** Passive Security Audit
**Operator:** ## 1. Subdomain Discovery 
* **Tool Used:** Sublist3r
* **Subdomains Found:**-  40 subdomain
www.tesla.com
accounts.tesla.com
assets-ir.tesla.com
auth.tesla.com
billing.tesla.com
fleet-api.prd.na.vn.cloud.tesla.com
fleet-auth.prd.vn.cloud.tesla.com
courses.tesla.com
developer.tesla.com
digitalassets.tesla.com
digitalassets-shop.tesla.com
echo.tesla.com
view.email.tesla.com
powerhub.energy.tesla.com
energylibrary.tesla.com
engage.tesla.com
epc.tesla.com
inside.tesla.com
ir.tesla.com
link.tesla.com
livestream.tesla.com
logcollection.tesla.com
mfa.tesla.com
mfa-reset.tesla.com
mobile.tesla.com
ownership.tesla.com
partners.tesla.com
parts.tesla.com
profile.tesla.com
service.tesla.com
shop.tesla.com
solarbonds.tesla.com
sso.tesla.com
sso-dev.tesla.com
static-assets.tesla.com
static-assets-pay.tesla.com
suppliers.tesla.com
teslamezcal.tesla.com
toolbox.tesla.com
workforce.tesla.com

## 2. Tech Stack Mapping 
* **Tool Used:** BuiltWith / Wappalyzer
* **Identified Technologies (CMS/CDN/Backend):** 
   CMS : Drupal 
   CDN : Akamai 
Caching: Varnish

## 3. Major Exposure Points & Dangers 
*(List three major exposure points discovered during your OSINT audit and explain why they are dangerous)*
1. **Version Disclosure:React 18.3.1** The version of React is exposing publicly,attackers can search the vulnerablilities of
 specific version for react. Outdated patterns can introduces XSS(Cross-Site Scripting) vulnerabilities.  
2. **Lodash 4.17.21(prototype pollution risk):** Lodash versions prior 4.17.21 (and some later one) are susceptible to
 prototype pollution attacks (CVE-2019-10744). This can lead to property injection, bypassing validation and in some environments,
 remote code execution. 
3. **Drupal 9(End of Life) + PHP Exposure** Drupal 9 reached end-of-life in Nov 2023 and no longer receives security patches.
 Combined with exposed PHP usage, this creaes a critcial attack surface. attackers can target known Drupal exploits to compromise
 the CMS. In addition, Akamai CDN may leak origin IP if misconfigured. 
