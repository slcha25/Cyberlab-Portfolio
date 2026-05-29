# OPERATION FORTRESS: DEFENSE IN DEPTH REPORT

## LAYER 1: FIREWALL (Egress Filtering)
**Rule:** iptables -A OUTPUT -d 198.51.100.0/24 -j DROP

## LAYER 2: IDS (Tripwire)
**Rule:** alert tcp any any -> any 80 (msg:"Web Shell Exploit Detected"; content:"cmd=whoami"; sid:1000001; rev:1;)

## LAYER 3: SYSMON (Endpoint)
**Rule:** <CommandLine condition="contains">curl http://198.51.100.5</CommandLine>

