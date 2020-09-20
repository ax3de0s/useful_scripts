#!/bin/bash

echo -n "Please enter a target IP address: "
read TARGET_IP

sudo masscan -p1-100,U:1-100 $TARGET_IP --rate=1000 -e tun0 -oL ips.txt | awk '{ print $3}' | sort -u > live_ips.txt

done
exit 0
