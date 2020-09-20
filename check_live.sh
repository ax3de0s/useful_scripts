#!/bin/bash

echo -n "Please enter a target IP address: "
read TARGET_IP

sudo masscan -p1-65535,U:1-65535 $TARGET_IP --rate=1000 -e tun0 -oL ips.txt | awk '{ print $3}' | sort -u > live_ips.txt

done
exit 0
