#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
CEKEXPIRED () {
    today=$(date -d +1day +%Y-%m-%d)
    Exp1=$(curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/ip | grep $MYIP | awk '{print $3}')
    if [[ $today < $Exp1 ]]; then
    echo -e "\e[32mSTATUS SCRIPT AKTIF...\e[0m"
    else
    echo -e "\e[31mSCRIPT ANDA EXPIRED!\e[0m";

    exit 0
fi
}
IZIN=$(curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/ip | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m"
CEKEXPIRED
else
echo -e "\e[31mPermission Denied!\e[0m";

exit 0
fi
clear
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e "\E[44;1;39m ⇱ [INFO] Downloading Update File⇲        \E[0m"
sleep 5
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "\E[44;1;39m               ⇱ 5 ⇲                      \E[0m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 4
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "\E[44;1;39m               ⇱ 4 ⇲                      \E[0m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 3
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "\E[44;1;39m               ⇱ 3 ⇲                      \E[0m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "\E[44;1;39m               ⇱ 2 ⇲                      \E[0m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "\E[44;1;39m               ⇱ 1 ⇲                      \E[0m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e""
echo -e "\033[0;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[m"
echo -e "\E[44;1;39m              ⇱ UPDATE ⇲                      \E[0m"
echo -e "\E[44;1;39m              ⇱ DIMULAI ⇲                     \E[0m"
echo -e "\033[0;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[m"
clear
# hapus menu
rm -rf menu
rm -rf m-vmess
rm -rf m-vless
rm -rf m-trojan
rm -rf m-system
rm -rf m-sshovpn
rm -rf m-sshws
rm -rf m-webmin
rm -rf running
rm -rf m-domain
rm -rf bw
rm -rf m-tcp
rm -rf auto-reboot
rm -rf clearcache
rm -rf restart
rm -rf ohp

# download menu
cd /usr/bin
rm -rf menu
rm -rf restart
rm -rf ohp

wget -O /usr/bin/ohp "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ohp.sh" && chmod +x /usr/bin/ohp
wget -O /usr/bin/menu "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/menu.sh" && chmod +x /usr/bin/menu
wget -O /usr/bin/m-vmess "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-vmess.sh" && chmod +x /usr/bin/m-vmess
wget -O /usr/bin/m-vless "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-vless.sh" && chmod +x /usr/bin/m-vless
wget -O /usr/bin/m-trojan "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-trojan.sh" && chmod +x /usr/bin/m-trojan
wget -O /usr/bin/m-system "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-system.sh" && chmod +x /usr/bin/m-system
wget -O /usr/bin/m-sshovpn "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-sshovpn.sh" && chmod +x /usr/bin/m-sshovpn
wget -O /usr/bin/m-sshws "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-ssws.sh" && chmod +x /usr/bin/m-ssws
wget -O /usr/bin/m-webmin "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-webmin.sh" && chmod +x /usr/bin/m-webmin
wget -O /usr/bin/running "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/running.sh" && chmod +x /usr/bin/running
wget -O /usr/bin/m-domain "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-domain.sh" && chmod +x /usr/bin/m-domain
wget -O /usr/bin/bw "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/bw.sh" && chmod +x /usr/bin/bw
wget -O /usr/bin/m-tcp "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/tcp.sh" && chmod +x /usr/bin/m-tcp
wget -O /usr/bin/auto-reboot "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/auto-reboot.sh" && chmod +x /usr/bin/auto-reboot
wget -O /usr/bin/clearcache "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/clearcache.sh" && chmod +x /usr/bin/clearcache
wget -O /usr/bin/restart "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/restart.sh" && chmod +x /usr/bin/restart
wget -O /usr/bin/update "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-update.sh" && chmod +x /usr/bin/m-update

chmod +x ohp
chmod +x menu
chmod +x m-vmess
chmod +x m-vless
chmod +x m-trojan
chmod +x m-system
chmod +x m-sshovpn
chmod +x m-ssws
chmod +x m-webmin
chmod +x running
chmod +x m-domain
chmod +x bw
chmod +x m-tcp
chmod +x auto-reboot
chmod +x clearcache
chmod +x restart
cd
