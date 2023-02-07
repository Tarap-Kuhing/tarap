#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################

BURIQ () {
    curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/ip > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f  /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f  /root/tmp
}
# https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/ip
MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/ip | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/ip | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}

clear
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\e[0m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
cd /root
#System version number
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi

localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi

mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /root/nsdomain
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/scdomain
touch /etc/v2ray/scdomain


echo -e "[ ${tyblue}NOTES${NC} ] Before we go.. "
sleep 0.5
echo -e "[ ${tyblue}NOTES${NC} ] I need check your headers first.."
sleep 0.5
echo -e "[ ${green}INFO${NC} ] Checking headers"
sleep 0.5
totet=`uname -r`
REQUIRED_PKG="linux-headers-$totet"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  sleep 0.5
  echo -e "[ ${yell}WARNING${NC} ] Try to install ...."
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  apt-get --yes install $REQUIRED_PKG
  sleep 0.5
  echo ""
  sleep 0.5
  echo -e "[ ${tyblue}NOTES${NC} ] If error you need.. to do this"
  sleep 0.5
  echo ""
  sleep 0.5
  echo -e "[ ${tyblue}NOTES${NC} ] apt update && upgrade"
  sleep 0.5
  echo ""
  sleep 0.5
  echo -e "[ ${tyblue}NOTES${NC} ] After this"
  sleep 0.5
  echo -e "[ ${tyblue}NOTES${NC} ] Then run this script again"
  echo -e "[ ${tyblue}NOTES${NC} ] enter now"
  read
else
  echo -e "[ ${green}INFO${NC} ] Oke installed"
fi

ttet=`uname -r`
ReqPKG="linux-headers-$ttet"
if ! dpkg -s $ReqPKG  >/dev/null 2>&1; then
  rm /root/setup.sh >/dev/null 2>&1
  exit
else
  clear
fi


secs_to_human() {
    echo "Installation time : $(( ${1} / 3600 )) hours $(( (${1} / 60) % 60 )) minute's $(( ${1} % 60 )) seconds"
}
start=$(date +%s)
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1

echo -e "[ ${green}INFO${NC} ] Preparing the install file"
apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] Selamat... File Instalasi Sudah Siap Brooo...."
sleep 1
echo -ne "[ ${green}INFO${NC} ] Check permission : "

PERMISSION
if [ -f /home/needupdate ]; then
red "Your script need to update first !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
green "Permission Accepted!"
else
red "Permission Denied!"
rm setup.sh > /dev/null 2>&1
sleep 0.5
exit 0
fi
sleep 0.5

mkdir -p /etc/tarap
mkdir -p /etc/tarap/theme
mkdir -p /var/lib/ >/dev/null 2>&1
echo "IP=" >> /var/lib/ipvps.conf
echo ""
wget -q https://raw.githubusercontent.com/Tarap-Kuhing/sc/main/tools.sh;chmod +x tools.sh;./tools.sh
rm tools.sh
clear
echo -e  "               ${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e  "               ${tyblue}|              TERIMA KASIH                |${NC}"
echo -e  "               ${tyblue}|         SUDAH MENGGUNAKAN SCRIPT         |${NC}"
echo -e  "               ${tyblue}|                DARI SAYA                 |${NC}"
echo -e  "               ${tyblue}|            BY TARAP KUHING               |${NC}"
echo -e  "               ${tyblue}|         ADA PERTANYAAN CHAT SAJA         |${NC}"
echo -e  "               ${tyblue}|        https://wa.me/085754292950        |${NC}"
echo -e  "               ${tyblue}└──────────────────────────────────────────┘${NC}"
echo " "
wget -q https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/ssh/Tarap-Kuhing.sh && chmod +x Tarap-Kuhing.sh && ./Tarap-Kuhing.sh
#read -rp "Masukan domain kamu Disini : " -e dns
#    if [ -z $dns ]; then
#        echo -e "
#       Nothing input for domain!
#        Then a random domain will be created"
#    else
#        echo "$dns" > /root/scdomain
	echo "$dns" > /etc/xray/scdomain
	echo "$dns" > /etc/xray/domain
	echo "$dns" > /etc/v2ray/domain
	echo $dns > /root/domain
        echo "IP=$dns" > /var/lib/ipvps.conf
    fi
clear
#THEME RED
cat <<EOF>> /etc/tarap/theme/red
BG : \E[40;1;41m
TEXT : \033[0;31m
EOF
#THEME BLUE
cat <<EOF>> /etc/tarap/theme/blue
BG : \E[40;1;44m
TEXT : \033[0;34m
EOF
#THEME GREEN
cat <<EOF>> /etc/tarap/theme/green
BG : \E[40;1;42m
TEXT : \033[0;32m
EOF
#THEME YELLOW
cat <<EOF>> /etc/tarap/theme/yellow
BG : \E[40;1;43m
TEXT : \033[0;33m
EOF
#THEME MAGENTA
cat <<EOF>> /etc/tarap/theme/magenta
BG : \E[40;1;43m
TEXT : \033[0;33m
EOF
#THEME CYAN
cat <<EOF>> /etc/tarap/theme/cyan
BG : \E[40;1;46m
TEXT : \033[0;36m
EOF
#THEME CONFIG
cat <<EOF>> /etc/tarap/theme/color.conf
blue
EOF

#install ssh ovpn
echo -e "                ${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "                ${tyblue}|      PROCESS INSTALLED SSH & OPENVPN     |${NC}"
echo -e "                ${tyblue}└──────────────────────────────────────────┘${NC}"
sleep 5
clear
wget https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/ssh/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
#Install Xray
echo -e "                ${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "                ${tyblue}|           PROCESS INSTALLED XRAY         |${NC}"
echo -e "                ${tyblue}└──────────────────────────────────────────┘${NC}"
sleep 5
clear
wget https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/xray/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
#Install SSH Websocket
echo -e "                ${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "                ${tyblue}|       PROCESS INSTALLED WEBSOCKET SSH    |${NC}"
echo -e "                ${tyblue}└──────────────────────────────────────────┘${NC}"
sleep 5
clear
wget https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/insshws.sh && chmod +x insshws.sh && ./insshws.sh
#Install AUTOBACKUP
echo -e "                ${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "                ${tyblue}|       PROCESS INSTALLED AUTOBACKUP       |${NC}"
echo -e "                ${tyblue}└──────────────────────────────────────────┘${NC}"
sleep 5
clear
wget https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/ssh/set-br.sh && chmod +x set-br.sh && ./set-br.sh
#Install OHP Websocket
echo -e "                ${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "                ${tyblue}|           PROCESS INSTALLED OHP          |${NC}"
echo -e "                ${tyblue}└──────────────────────────────────────────┘${NC}"
sleep 5
clear
wget https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ohp.sh && chmod +x ohp.sh && ./ohp.sh
clear
#Download Extra Menu
echo -e "                ${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "                ${tyblue}|           DOWNLOAD EXTRA MENU            |${NC}"
echo -e "                ${tyblue}└──────────────────────────────────────────┘${NC}"
sleep 2
wget https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/update.sh && chmod +x update.sh && ./update.sh
clear
cat> /root/.profile << END
# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
clear
menu
END
chmod 644 /root/.profile

if [ -f "/root/log-install.txt" ]; then
rm /root/log-install.txt > /dev/null 2>&1
fi
if [ -f "/etc/afak.conf" ]; then
rm /etc/afak.conf > /dev/null 2>&1
fi
if [ ! -f "/etc/log-create-user.log" ]; then
echo "Log All Account " > /etc/log-create-user.log
fi
history -c
serverV=$( curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/versi  )
echo $serverV > /opt/.ver
aureb=$(cat /home/re_otm)
b=11
if [ $aureb -gt $b ]
then
gg="PM"
else
gg="AM"
fi
curl -sS ifconfig.me > /etc/myipvps
echo " "
echo "━━━━━━━━━━━━━━━━━━[ Script By TARAP KUHING ]━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo ""
echo "   >>> Service & Port "              | tee -a log-install.txt
echo "   - OpenSSH                  : 22"  | tee -a log-install.txt
echo "   - SSH Websocket            : 80" | tee -a log-install.txt
echo "   - SSH SSL Websocket        : 443, 444" | tee -a log-install.txt
echo "   - Stunnel4                 : 8443, 8880" | tee -a log-install.txt
echo "   - Dropbear                 : 109, 143" | tee -a log-install.txt
echo "   - Badvpn                   : 7100-7900" | tee -a log-install.txt
echo "   - Nginx                    : 89"  | tee -a log-install.txt
echo "   - Vmess WS TLS             : 443" | tee -a log-install.txt
echo "   - Vless WS TLS             : 443" | tee -a log-install.txt
echo "   - Trojan WS TLS            : 443" | tee -a log-install.txt
echo "   - Shadowsocks WS TLS       : 443" | tee -a log-install.txt
echo "   - Vmess WS none TLS        : 80"  | tee -a log-install.txt
echo "   - Vless WS none TLS        : 80"  | tee -a log-install.txt
echo "   - Trojan WS none TLS       : 80"  | tee -a log-install.txt
echo "   - Shadowsocks WS none TLS  : 80"  | tee -a log-install.txt
echo "   - Vmess gRPC               : 443" | tee -a log-install.txt
echo "   - Vless gRPC               : 443" | tee -a log-install.txt
echo "   - Trojan gRPC              : 443" | tee -a log-install.txt
echo "   - Shadowsocks gRPC         : 443" | tee -a log-install.txt
echo "   - Websocket Ovpn           : 2086"| tee -a log-install.txt
echo "   - OHP SSH                  : 8181"| tee -a log-install.txt
echo "   - OHP Dropbear             : 8282"
echo "   - OHP OpenVPN              : 8383"| tee -a log-install.txt
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On           : $aureb:00 $gg GMT +8" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - AutoKill Multi Login User" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Fully automatic script" | tee -a log-install.txt
echo "   - VPS settings" | tee -a log-install.txt
echo "   - Admin Control" | tee -a log-install.txt
echo "   - Backup & Restore Data" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "━━━━━━━━━━━━━━━━━━[ Script By TARAP KUHING ]━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
echo ""
echo "" | tee -a log-install.txt
rm /root/setup.sh >/dev/null 2>&1
rm /root/ins-xray.sh >/dev/null 2>&1
rm /root/insshws.sh >/dev/null 2>&1
rm /root/set-br.sh >/dev/null 2>&1
rm /root/ohp.sh >/dev/null 2>&1
rm /root/update.sh >/dev/null 2>&1
secs_to_human "$(($(date +%s) - ${start}))" | tee -a log-install.txt
echo -e "                 ${tyblue}┌────────────────────────────────────────────┐${NC}"
echo -e "                 ${tyblue}|Install Script VPS By TARAP KUHING SELESAI..|${NC}"
echo -e "                 ${tyblue}└────────────────────────────────────────────┘${NC}"
echo  ""
sleep 3
echo -e "                                      ${tyblue}R${NC}"
echo  ""
sleep 3
echo -e "                                      ${tyblue}E${NC}"
echo  ""
sleep 3
echo -e "                                      ${tyblue}B${NC}"
echo ""
sleep 3
echo -e "                                      ${tyblue}O${NC}"
echo ""
sleep 3
echo -e "                                      ${tyblue}O${NC}"
echo  ""
sleep 3
echo -e "                                      ${tyblue}T${NC}"
sleep 3
reboot
