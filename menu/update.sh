#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/m-vmess "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-vmess.sh" && chmod +x /usr/bin/m-vmess
wget -q -O /usr/bin/m-vless "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-vless.sh" && chmod +x /usr/bin/m-vless
wget -q -O /usr/bin/m-trojan "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-trojan.sh" && chmod +x /usr/bin/m-trojan
wget -q -O /usr/bin/m-system "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-system.sh" && chmod +x /usr/bin/m-system
wget -q -O /usr/bin/m-sshovpn "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-sshovpn.sh" && chmod +x /usr/bin/m-sshovpn
wget -q -O /usr/bin/m-ssws "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-ssws.sh" && chmod +x /usr/bin/m-ssws
wget -q -O /usr/bin/m-webmin "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-webmin.sh" && chmod +x /usr/bin/m-webmin
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/running.sh" && chmod +x /usr/bin/running
wget -q -O /usr/bin/bw "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/bw.sh" && chmod +x /usr/bin/bw
wget -q -O /usr/bin/m-tcp "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/tcp.sh" && chmod +x /usr/bin/m-tcp
wget -q -O /usr/bin/auto-reboot "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/auto-reboot.sh" && chmod +x /usr/bin/auto-reboot
wget -q -O /usr/bin/clearcache "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/clearcache.sh" && chmod +x /usr/bin/clearcache
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/restart.sh" && chmod +x /usr/bin/restart
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-update.sh" && chmod +x /usr/bin/m-update
wget -q -O /usr/bin/backup "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/ssh/backup.sh" && chmod +x /usr/bin/backup
wget -q -O /usr/bin/autobackup "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/ssh/autobackup.sh" && chmod +x /usr/bin/autobackup
wget -q -O /usr/bin/limitspeed "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/ssh/limitspeed.sh" && chmod +x /usr/bin/limitspeed
wget -q -O /usr/bin/m-theme "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-theme.sh" && chmod +x /usr/bin/m-theme
sleep 2
exit
