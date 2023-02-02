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
clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
cekray=`cat /root/log-install.txt | grep -ow "XRAY" | sort | uniq`
if [ "$cekray" = "XRAY" ]; then
rekk='xray'
becek='XRAY'
else
rekk='v2ray'
becek='V2RAY'
fi

ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${WH}ONLINE${NC}"
else
ressh="${red}OFFLINE${NC}"
fi
sshstunel=$(service stunnel4 status | grep active | cut -d ' ' $stat)
if [ "$sshstunel" = "active" ]; then
resst="${WH}ONLINE${NC}"
else
resst="${red}OFFLINE${NC}"
fi
sshws=$(service ws-dropbear status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
rews="${WH}ONLINE${NC}"
else
rews="${red}OFFLINE${NC}"
fi

sshws2=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws2" = "active" ]; then
rews2="${WH}ONLINE${NC}"
else
rews2="${red}OFFLINE${NC}"
fi

db=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$db" = "active" ]; then
resdb="${WH}ONLINE${NC}"
else
resdb="${red}OFFLINE${NC}"
fi
 
v2r=$(service $rekk status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${WH}ONLINE${NC}"
else
resv2r="${red}OFFLINE${NC}"
fi
vles=$(service $rekk status | grep active | cut -d ' ' $stat)
if [ "$vles" = "active" ]; then
resvles="${WH}ONLINE${NC}"
else
resvles="${red}OFFLINE${NC}"
fi
trj=$(service $rekk status | grep active | cut -d ' ' $stat)
if [ "$trj" = "active" ]; then
restr="${WH}ONLINE${NC}"
else
restr="${red}OFFLINE${NC}"
fi

tcp="$(systemctl show --now openvpn-server@server-tcp-1194 --no-page)"
status1=$(echo "${tcp}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status1}" = "active" ]; then
ovpntcp="${WH}ONLINE${NC}"
else
ovpntcp="${red}OFFLINE${NC}"
fi

udp="$(systemctl show --now openvpn-server@server-udp-2200 --no-page)"
status2=$(echo "${udp}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status2}" = "active" ]; then
ovpnudp="${WH}ONLINE${NC}"
else
ovpnudp="${red}OFFLINE${NC}"
fi

ovhp="$(systemctl show ohp.service --no-page)"
status3=$(echo "${ovhp}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status3}" = "active" ]; then
ohp="${WH}ONLINE${NC}"
else
ohp="${red}OFFLINE${NC}"
fi

ningx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ningx" = "active" ]; then
resnx="${WH}ONLINE${NC}"
else
resnx="${red}OFFLINE${NC}"
fi

squid=$(service squid status | grep active | cut -d ' ' $stat)
if [ "$squid" = "active" ]; then
ressq="${WH}ONLINE${NC}"
else
ressq="${red}OFFLINE${NC}"
fi
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH}• SERVER STATUS •               ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " $COLOR1┌───────────────────────────────────────────────┐${NC}"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}SSH & VPN                        ${COLOR1}• $ressh"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}OVPN TCP                         ${COLOR1}• $ovpntcp"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}OVPN UDP                         ${COLOR1}• $ovpnudp"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}OVPN OHP                         ${COLOR1}• $ohp"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}SQUID                            ${COLOR1}• $ressq"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}DROPBEAR                         ${COLOR1}• $resdb"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}NGINX                            ${COLOR1}• $resnx"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}WS DROPBEAR                      ${COLOR1}• $rews"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}WS STUNNEL                       ${COLOR1}• $rews2"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}STUNNEL                          ${COLOR1}• $resst"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}XRAY-SS                          ${COLOR1}• $resv2r"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}XRAY                             ${COLOR1}• $resv2r"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}VLESS                            ${COLOR1}• $resvles"
echo -e " $COLOR1 ${NC}  ${COLOR1}• ${WH}TROJAN                           ${COLOR1}• $restr"
echo -e " $COLOR1└───────────────────────────────────────────────┘${NC}" 
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}───────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}                ${WH}• TARAP KUHING •${NC}                 $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
m-set
