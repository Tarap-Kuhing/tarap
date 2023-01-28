#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Tanggal | sed -e 's/< Tanggal: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- KODE WARNA -##############
colornow=$(cat /etc/tarap/theme/color.conf)
NC="\e[0m"
MERAH="\033[0;31m"
COLOR1="$(cat /etc/tarap/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/tarap/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
###########- AKHIR KODE WARNA -##########



BURIQ () {
    curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/ip > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    untuk pengguna di "${data[@]}"
    melakukan
    exp=( `grep -E "^### $pengguna" "/root/tmp" | awk '{print $3}'` )
    d1=(`tanggal -d "$exp" +%s`)
    d2=(`tanggal -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; kemudian
    gema $pengguna > /etc/.$pengguna.ini
    kalau tidak
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    selesai
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Nama=$(curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/ip | grep $MYIP | awk '{print $2}')
gema $Nama > /usr/local/etc/.$Nama.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Nama.ini" ]; kemudian
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekSatu" = "$CekDua" ]; kemudian
        res="Kedaluwarsa"
    fi
kalau tidak
res="Izin Diterima..."
fi
}

IZIN () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/ip | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; kemudian
    Bloman
    kalau tidak
    res="Izin Ditolak!"
    fi
    BURIQ
}

x="oke"


IZIN

jernih
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• PANEL TEMA • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
Echo -e "$ color1┌──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┐${NC}"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}01${WH}]$NC ${COLOR1}• ${WH}BLUE YODO ${WH}[${COLOR1}04${WH} ]$NC ${COLOR1}• ${WH}CYAN MEOW$NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}02${WH}]$NC ${COLOR1}• ${WH}LINK HOT MERAH ${WH}[${COLOR1}05${WH} ]$NC ${COLOR1}• ${WH}HIJAU DAUN$NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}03${WH}]$NC ${COLOR1}• ${WH}YELLOW DIGI ${WH}[${COLOR1}06${WH} ]$NC ${COLOR1}• ${WH}MAGENTA AXIS$NC"
gema -e " $COLOR1 $NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}00${WH}]$NC ${COLOR1}• ${WH}GO BACK$NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e ""
echo -ne " ${WH}Pilih menu ${COLOR1}: ${WH}"; baca menu warna
kasus $colormenu di
01 | 1)
jernih
echo "biru" >/etc/tarap/theme/color.conf
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• TEMA BIRU • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
Echo -e "$ color1┌──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┐${NC}"
gema -e " $COLOR1 $NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}INFO${WH}] ${WH}TEAM BLUE Berhasil Aktif${NC}"
gema -e " $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
;;
02 | 2)
jernih
echo "merah" >/etc/tarap/theme/color.conf
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• TEMA MERAH • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
Echo -e "$ color1┌──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┐${NC}"
gema -e " $COLOR1 $NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}INFO${WH}] ${WH}TEAM RED Berhasil Aktif${NC}"
gema -e " $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
;;
03 | 3)
jernih
echo "kuning" >/etc/tarap/theme/color.conf
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• TEMA KUNING • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
Echo -e "$ color1┌──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┐${NC}"
gema -e " $COLOR1 $NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}INFO${WH}] ${WH}TEAM YELLOW Berhasil Aktif${NC}"
gema -e " $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
;;
04 | 4)
jernih
echo "cyan" >/etc/tarap/theme/color.conf
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• TEMA CYAN • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
Echo -e "$ color1┌──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┐${NC}"
gema -e " $COLOR1 $NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}INFO${WH}] ${WH}TEAM CYAN Berhasil Aktif${NC}"
gema -e " $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
;;
05 | 5)
jernih
echo "hijau" >/etc/tarap/theme/color.conf
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• TEMA HIJAU • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
Echo -e "$ color1┌──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┐${NC}"
gema -e " $COLOR1 $NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}INFO${WH}] ${WH}TEAM GREEN Berhasil Aktif${NC}"
gema -e " $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
;;
06 | 6)
jernih
echo "magenta" >/etc/tarap/theme/color.conf
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• TEMA MAGENTA • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
Echo -e "$ color1┌──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┐${NC}"
gema -e " $COLOR1 $NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}INFO${WH}] ${WH}TEAM MAGENTA Berhasil Aktif${NC}"
gema -e " $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
;;
00 | 0)
jernih
Tidak bisa
;;
*)
jernih
menu-theme
;;
esac
gema -e ""
read -n 1 -s -r -p "Tekan sembarang tombol untuk kembali ke menu"
menu-theme
