#!/bin/bash
# Tarap-Kuhing
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
echo -e "\e[32mloading...\e[0m"
clear
IP=$(wget -qO- icanhazip.com);
date=$(date +"%Y-%m-%d")
email=$(cat /home/email)
echo Directory Created
mkdir /root/backup
sleep 1
echo Start Backup
clear
cp /etc/passwd backup/
cp /etc/group backup/
cp /etc/shadow backup/
cp /etc/gshadow backup/
cp -r /etc/wireguard backup/wireguard
cp /etc/shadowsocks-libev/akun.conf backup/ss.conf
cp -r /var/lib/ backup
cp -r /usr/local/etc/xray
cp -r /usr/local/etc/xray backup/xray
cp -r /etc/trojan-go backup/trojan-go
cp -r /usr/local/shadowsocksr/ backup/shadowsocksr
cp /etc/crontab backup/crontab
cp -r /home/vps/public_html backup/public_html
cd /root
zip -r $IP-$date.zip backup > /dev/null 2>&1
rclone copy /root/$IP-$date.zip dr:backup/
url=$(rclone link dr:backup/$IP-$date.zip)
id=(`echo $url | grep '^https' | cut -d'=' -f2`)
link="https://drive.google.com/u/4/uc?id=${id}&export=download"
echo -e "The following is a link to your vps data backup file.

Your VPS IP $IP

$link

If you want to restore data, please enter the link above.

Thank You For Using Our Services" | mail -s "Backup Data" $email
rm -rf /root/backup
rm -r /root/$IP-$date.zip
echo Done
