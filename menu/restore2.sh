#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
clear
echo "This Feature Can Only Be Used According To Vps Data With This Autoscript"
echo "Please input link to your vps data backup file."
echo "You can check it on your email if you run backup data vps before."
read -rp "Link File: " -e url
wget -O backup.zip "$url"
unzip backup.zip
rm -f backup.zip
sleep 1
echo Start Restore
cd /root/backup
cp group /etc/
cp shadow /etc/
cp gshadow /etc/
cp msmtprc /etc/
cp email /home/
cp chap-secrets /etc/ppp/
cp -r var/lib/
cp -r domain /root/
cp -r xray /etc/
cp -r v2ray /etc/
cp -r vps /home/
cp crontab /etc/

systemctl restart xray
systemctl restart v2ray
rm -rf /root/backup
rm -f backup.zip
echo Done
