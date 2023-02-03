#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
colornow=$(cat /etc/tarap/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m" 
COLOR1="$(cat /etc/tarap/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/tarap/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"  
WH='\033[1;37m'                  
###########- END COLOR CODE -##########

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
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

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
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION
if [ -f /home/needupdate ]; then
red "Your script need to update first !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
echo -ne
else
red "Permission Denied!"
exit 0
fi

# CHEK STATUS
openvpn_service="$(systemctl show openvpn.service --no-page)"
oovpn=$(echo "${openvpn_service}" | grep 'ActiveState=' | cut -f2 -d=)
status_openvp=$(/etc/init.d/openvpn status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#status_ss_tls="$(systemctl show shadowsocks-libev-server@tls.service --no-page)"
#ss_tls=$(echo "${status_ss_tls}" | grep 'ActiveState=' | cut -f2 -d=)
#sst_status=$(systemctl status shadowsocks-libev-server@tls | grep Active | awk '{print $0}' | cut -d "(" -f2 | cut -d ")" -f1)
#ssh_status=$(systemctl status shadowsocks-libev-server@http | grep Active | awk '{print $0}' | cut -d "(" -f2 | cut -d ")" -f1)
#status_ss_http="$(systemctl show shadowsocks-libev-server@http.service --no-page)"
#ss_http=$(echo "${status_ss_http}" | grep 'ActiveState=' | cut -f2 -d=)
#sssohtt=$(systemctl status shadowsocks-libev-server@*-http | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#status="$(systemctl show shadowsocks-libev.service --no-page)"
#status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
tls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
nontls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
vless_tls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
vless_nontls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
shadowsocks=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#ssr_status=$(systemctl status ssrmu | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
trojan_server=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
dropbear_status=$(/etc/init.d/dropbear status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
stunnel_service=$(/etc/init.d/stunnel4 status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#sstp_service=$(systemctl status accel-ppp | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#squid_service=$(/etc/init.d/squid status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
ssh_service=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
vnstat_service=$(/etc/init.d/vnstat status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
cron_service=$(/etc/init.d/cron status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
fail2ban_service=$(/etc/init.d/fail2ban status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#wg="$(systemctl show wg-quick@wg0.service --no-page)"
#swg=$(echo "${wg}" | grep 'ActiveState=' | cut -f2 -d=)
#trgo="$(systemctl show trojan-go.service --no-page)"
#strgo=$(echo "${trgo}" | grep 'ActiveState=' | cut -f2 -d=)
#sswg=$(systemctl status wg-quick@wg0 | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
wstls=$(systemctl status ws-stunnel.service | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
wsdrop=$(systemctl status ws-dropbear.service | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
wsovpn=$(systemctl status ws-ovpn | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
wsopen=$(systemctl status ws-openssh | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
osslh=$(systemctl status sslh | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
ohp=$(systemctl status dropbear-ohp | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
ohq=$(systemctl status openvpn-ohp | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
ohr=$(systemctl status ssh-ohp | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)

# COLOR VALIDATION
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
clear

# STATUS SERVICE OPENVPN
if [[ $oovpn == "active" ]]; then
  status_openvpn=" ${GREEN}Running ${NC}( No Error )"
else
  status_openvpn="${RED}  Not Running ${NC}  ( Error )"
fi

# STATUS SERVICE  SSH
if [[ $ssh_service == "running" ]]; then
   status_ssh=" ${GREEN}Running ${NC}( No Error )"
else
   status_ssh="${RED}  Not Running ${NC}  ( Error )"
fi

# STATUS SERVICE  SQUID
if [[ $squid_service == "running" ]]; then
   status_squid=" ${GREEN}Running ${NC}( No Error )"
else
   status_squid="${RED}  Not Running ${NC}  ( Error )"
fi

# STATUS SERVICE  VNSTAT
if [[ $vnstat_service == "running" ]]; then
   status_vnstat=" ${GREEN}Running ${NC}( No Error )"
else
   status_vnstat="${RED}  Not Running ${NC}  ( Error )"
fi

# STATUS SERVICE  CRONS
if [[ $cron_service == "running" ]]; then
   status_cron=" ${GREEN}Running ${NC}( No Error )"
else
   status_cron="${RED}  Not Running ${NC}  ( Error )"
fi

# STATUS SERVICE  FAIL2BAN
if [[ $fail2ban_service == "running" ]]; then
   status_fail2ban=" ${GREEN}Running ${NC}( No Error )"
else
   status_fail2ban="${RED}  Not Running ${NC}  ( Error )"
fi

# STATUS SERVICE  TLS
if [[ $tls_v2ray_status == "running" ]]; then
   status_tls_v2ray=" ${GREEN}Running${NC} ( No Error )"
else
   status_tls_v2ray="${RED}  Not Running${NC}   ( Error )"
fi

# STATUS SERVICE NON TLS V2RAY
if [[ $nontls_v2ray_status == "running" ]]; then
   status_nontls_v2ray=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_nontls_v2ray="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SERVICE VLESS HTTPS
if [[ $vless_tls_v2ray_status == "running" ]]; then
  status_tls_vless=" ${GREEN}Running${NC} ( No Error )"
else
  status_tls_vless="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SERVICE VLESS HTTP
if [[ $vless_nontls_v2ray_status == "running" ]]; then
  status_nontls_vless=" ${GREEN}Running${NC} ( No Error )"
else
  status_nontls_vless="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# STATUS SERVICE TROJAN
if [[ $trojan_server == "running" ]]; then
   status_virus_trojan=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_virus_trojan="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# STATUS SERVICE DROPBEAR
if [[ $dropbear_status == "running" ]]; then
   status_beruangjatuh=" ${GREEN}Running${NC} ( No Error )${NC}"
else
   status_beruangjatuh="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SERVICE STUNNEL
if [[ $stunnel_service == "running" ]]; then
   status_stunnel=" ${GREEN}Running ${NC}( No Error )"
else
   status_stunnel="${RED}  Not Running ${NC}  ( Error )}"
fi
# STATUS SERVICE WEBSOCKET TLS
if [[ $wstls == "running" ]]; then
   swstls=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   swstls="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SERVICE WEBSOCKET DROPBEAR
if [[ $wsdrop == "running" ]]; then
   swsdrop=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   swsdrop="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SERVICE SSLH / SSH
if [[ $osslh == "running" ]]; then 
   sosslh=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   sosslh="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS OHP DROPBEAR
if [[ $ohp == "running" ]]; then 
   sohp=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   sohp="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS OHP OpenVPN
if [[ $ohq == "running" ]]; then 
   sohq=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   sohq="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS OHP SSH
if [[ $ohr == "running" ]]; then 
   sohr=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   sohr="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SHADOWSOCKS
if [[ $shadowsocks == "running" ]]; then
   status_shadowsocks=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_shadowsocks="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH}• SERVER STATUS •               ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " $COLOR1┌───────────────────────────────────────────────┐${NC}"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}SSH                        ${COLOR1}• $ressh"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}OVPN                        ${COLOR1}• $ressh"
#echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}OVPN TCP                         ${COLOR1}• $ovpntcp"
#echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}OVPN UDP                         ${COLOR1}• $ovpnudp"
#echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}OVPN OHP                         ${COLOR1}• $ohp"
#echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}SQUID                            ${COLOR1}• $ressq"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}DROPBEAR                         ${COLOR1}• $resdb"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}NGINX                            ${COLOR1}• $resnx"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}WS DROPBEAR                      ${COLOR1}• $wsdrop"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}WS STUNNEL                       ${COLOR1}• $wstls"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}STUNNEL                          ${COLOR1}• $stunnel_service
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}XRAY-SS                          ${COLOR1}• $resv2r"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}XRAY                             ${COLOR1}• $resv2r"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}VLESS                            ${COLOR1}• $resvles"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}TROJAN                           ${COLOR1}• $trojan_server"
echo -e " $COLOR1└───────────────────────────────────────────────┘${NC}" 
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}───────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}                ${WH}• TARAP KUHING •${NC}                 $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu
