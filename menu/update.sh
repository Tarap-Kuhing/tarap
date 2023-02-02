#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/m-ip "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-ip.sh" && chmod +x /usr/bin/m-ip
wget -q -O /usr/bin/m-dns "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-dns.sh" && chmod +x /usr/bin/m-dns
wget -q -O /usr/bin/m-bot "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-bot.sh" && chmod +x /usr/bin/m-bot
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/update.sh" && chmod +x /usr/bin/update
wget -q -O /usr/bin/m-update "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/ssh/m-update.sh" && chmod +x /usr/bin/m-update
wget -q -O /usr/bin/m-theme "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-theme.sh" && chmod +x /usr/bin/m-theme
sleep 2
exit
