#!/bin/bash

echo -n "Please enter a target IP address: "
read TARGET_IP

# Example: portscan 192.168.0.1 -oX nmap.xml
echo Grabbing ports...
ports=$(nmap -p- --min-rate 1000 -T4 $TARGET_IP | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//)
echo Ports grabbed!
echo Scanning...
nmap -sC -sV -Pn -p $ports $1 $2 $3
done
exit 0
