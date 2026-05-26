# S14 Provisioning: GPO Audit Artifact Seeding
$TargetDir = "C:\Users\Administrator\Desktop"
$ArtifactPath = "$TargetDir\gpo_audit.txt"

Write-Host "[*] Initializing Session 14 Environment..." -ForegroundColor Cyan

$Template = @"
==================================================
SESSION 14: GROUP POLICY AUDIT REPORT
==================================================

QUESTION 1: What specific command do you run on a client machine to force it to download the latest Group Policy from the Domain Controller?
ANSWER: gpupdate /force

QUESTION 2: Explain the LSDOU acronym. If a Local Policy says "Enable USB" but the Domain Policy says "Disable USB", which one wins and why?
ANSWER: LSDOU stands for Local, Site, Domain, OU. The order of group policy processing from lowest to hightest priority. 
        Since Domain policy processes after local policy, Disable USB ovrrides "Enable USB". so Disable USB is on.

QUESTION 3: Why is it best practice to apply GPOs to Organizational Units (OUs) rather than the entire Domain?
ANSWER: It is better to apply GPOs to organizational Units (OUs) rather than the entire Domain because group policy is only 
        apply for special units to do the specific task. If we apply for the entire domain, 
        it will apply for the all units in the domain and it is easy to give other units restriction and 
        when you want to give the specific units for the other tasks.
        the GPO need to amend again. It spends a lot to time to do and it is not effecttive for modify the GPO evey time.
        Granular control - Different departments need differeent restrictions, Easier troubleshooting - Policcy issues affect only one OU intead of the entire company.
 
"@

Set-Content -Path $ArtifactPath -Value $Template
Write-Host "[+] PROVISIONING COMPLETE. Artifact template seeded at: $ArtifactPath" -ForegroundColor Green
