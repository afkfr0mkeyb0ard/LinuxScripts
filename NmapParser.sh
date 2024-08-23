#!/bin/bash
# Order Nmap scan result by port
# > sh NmapParser.sh scan.gnmap

cat $1 | grep 21/open | cut -d ' ' -f 2 > ${PWD}/services_FTP
cat $1 | grep 22/open | cut -d ' ' -f 2 > ${PWD}/services_SSH
cat $1 | grep 23/open | cut -d ' ' -f 2 > ${PWD}/services_TELNET
cat $1 | grep 25/open | cut -d ' ' -f 2 > ${PWD}/services_SMTP
cat $1 | grep 53/open | cut -d ' ' -f 2 > ${PWD}/services_DNS
cat $1 | grep 80/open | cut -d ' ' -f 2 > ${PWD}/services_HTTP_80
cat $1 | grep 88/open | cut -d ' ' -f 2 > ${PWD}/services_KERBEROS
cat $1 | grep 110/open | cut -d ' ' -f 2 > ${PWD}/services_POP3
cat $1 | grep 135/open | cut -d ' ' -f 2 > ${PWD}/services_RPC
cat $1 | grep 139/open | cut -d ' ' -f 2 > ${PWD}/services_NETBIOS
cat $1 | grep 143/open | cut -d ' ' -f 2 > ${PWD}/services_IMAP
cat $1 | grep 161/open | cut -d ' ' -f 2 > ${PWD}/services_SNMP
cat $1 | grep 389/open | cut -d ' ' -f 2 > ${PWD}/services_LDAP_389
cat $1 | grep 443/open | cut -d ' ' -f 2 > ${PWD}/services_HTTPS
cat $1 | grep 445/open | cut -d ' ' -f 2 > ${PWD}/services_SMB
cat $1 | grep 636/open | cut -d ' ' -f 2 > ${PWD}/services_LDAPS
cat $1 | grep 993/open | cut -d ' ' -f 2 > ${PWD}/services_IMAPS
cat $1 | grep 995/open | cut -d ' ' -f 2 > ${PWD}/services_POP3S
cat $1 | grep 1433/open | cut -d ' ' -f 2 > ${PWD}/services_MSSQL
cat $1 | grep 1521/open | cut -d ' ' -f 2 > ${PWD}/services_ORACLE
cat $1 | grep 1723/open | cut -d ' ' -f 2 > ${PWD}/services_PPTP_VPN
cat $1 | grep 2049/open | cut -d ' ' -f 2 > ${PWD}/services_NFS
cat $1 | grep 3268/open | cut -d ' ' -f 2 > ${PWD}/services_LDAP_3268
cat $1 | grep 3306/open | cut -d ' ' -f 2 > ${PWD}/services_MYSQL
cat $1 | grep 3389/open | cut -d ' ' -f 2 > ${PWD}/services_RDP
cat $1 | grep 5432/open | cut -d ' ' -f 2 > ${PWD}/services_POSTGRESQL
cat $1 | grep 5800/open | cut -d ' ' -f 2 > ${PWD}/services_VNC_web
cat $1 | grep 5900/open | cut -d ' ' -f 2 > ${PWD}/services_VNC
cat $1 | grep 5985/open | cut -d ' ' -f 2 > ${PWD}/services_WINRM
cat $1 | grep 6000/open | cut -d ' ' -f 2 > ${PWD}/services_X11
cat $1 | grep 8000/open | cut -d ' ' -f 2 > ${PWD}/services_HTTP_8000
cat $1 | grep 8080/open | cut -d ' ' -f 2 > ${PWD}/services_HTTP_8080
cat $1 | grep 8081/open | cut -d ' ' -f 2 > ${PWD}/services_HTTP_8081
cat $1 | grep 8082/open | cut -d ' ' -f 2 > ${PWD}/services_HTTP_8082
cat $1 | grep 8100/open | cut -d ' ' -f 2 > ${PWD}/services_HTTP_8100
cat $1 | grep 8443/open | cut -d ' ' -f 2 > ${PWD}/services_HTTPS_8443
cat $1 | grep 8888/open | cut -d ' ' -f 2 > ${PWD}/services_HTTPS_8888
cat $1 | grep 9443/open | cut -d ' ' -f 2 > ${PWD}/services_HTTPS_9443
cat $1 | grep 9999/open | cut -d ' ' -f 2 > ${PWD}/services_ABYSS
cat $1 | grep 10000/open | cut -d ' ' -f 2 > ${PWD}/services_HTTPS_10000
cat $1 | grep 27017/open | cut -d ' ' -f 2 > ${PWD}/services_MONGODB
cat $1 | grep 30024/open | cut -d ' ' -f 2 > ${PWD}/services_ALCATEL

echo 'Done! Saved to '${PWD}/
