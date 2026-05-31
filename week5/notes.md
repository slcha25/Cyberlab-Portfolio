

# Week 05 —  Identity, Access Management (IAM), and Windows Enterprise Infrastructure
**TKH Innovation Fellowship 2026 | Phase 1 | Cybersecurity**

![Student](https://img.shields.io/badge/Role-Student-blue?style=flat-square)
![Phase](https://img.shields.io/badge/Phase-1%20of%202-orange?style=flat-square)
![Weeks](https://img.shields.io/badge/Weeks-05-red?style=flat-square)
![Status](https://img.shields.io/badge/Portfolio-Complete-brightgreen?style=flat-square)
![Cohort](https://img.shields.io/badge/Cohort-Class%20of%202026-darkblue?style=flat-square)

## What I Learned

- In S13 Lab, I learned how to promote a standalone server to a Domain Controller to manage trust and scale, map the hierarchy, know what Kerberos is and how it works, and utilize PowerShell to programmatically create and secure user accounts.

- In S14 Lab, I learned how GPOs remotely manipulate the Windows Registry of client machines,master Inheritance (LSDOU),create and link GPOs to restrict system access,and execute Policy Enforcement.

- In S15 lab, I learned how to join a Linux (Ubuntu) machine to a Microsoft Active Directory domain, engineer the Sudoers Bridge, and execute Cross-Platform Identity

- In this week, I learned how to work in Windew Server and nagiviate the domain controller to give the GPO, in addition, I learned how to connect 2VM (Linux VM and window server VM), how to set up the connection with my current IDE(VS code) as well .

## Artifacts
**Lab S13: The Corporate Brain ── onboard_engineers.ps1 (Windows Server & Active Directory)**
 - promoting a server to a Domain Controller, building the AD hierarchy, and automating identity at scale with PowerShell

**Lab S14: The Invisible Hand ── gpo_audit.txt (Group Policy Mastery)**
  - deploying Group Policy Objects to enforce security rules across the domain and mastering the LSDOU inheritance order

**Lab S15: Bridging the Kingdoms ── unified_identity.png (Linux Integration)**
  -  forcing a Linux machine to authenticate against the Windows domain, unifying two operating systems under one identity perimeter

## Artifact filename
  - Lab S13 ── onboard_engineers.ps1 (Windows Server & Active Directory)
  - Lab S14 ──  gpo_audit.txt (a Forge Final Exam Report)
  - Lab S15 ── unified_identity.png (deploy the complete infrastructure)

## Challenges & How I Solved Them

- When i was doing lab S15, I learned how to open two VM ( one is Linux and another one is window Server and make connection with each other). I have a lot of troubleshooting for this part. At the first, I learned how to set up the connect network with VM and My IDE enviroment, then, work on their connection(Linux VM and Winder Server VM). After they connected, I also work on setting up the custom rule to block the normal users can't open the control panel. It took me a lot of time to work on the connection with 2 VM.

## Reflection
- In this week lab, the lesson I learned to use VM enviroment to install Window Server since my operating system is window. When I install window server into my computer, it delete my orignial window and use window server to do my interface. It took me a few hours to work on backup my old files to the usb and install new window to restore anything I have in my computer. This is a big lesson for me to be aware when i install new server in my computer.

## References
- Microsoft. (2023, April 28). Install Active Directory Domain Services (Level 100). Learn.microsoft.com. https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/deploy/install-active-directory-domain-services--level-100-
- iainfoulds. (n.d.). Understanding the Active Directory Logical Model. Learn.microsoft.com. https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/plan/understanding-the-active-directory-logical-model

‌


‌

‌
