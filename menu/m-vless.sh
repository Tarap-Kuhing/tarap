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
merah='\e[1;31m'
hijau='\e[1;32m'
NC='\e[0m'
hijau() { echo -e "\\033[32;1m${*}\\033[0m"; }
merah() { echo -e "\\033[31;1jt${*}\\033[0m"; }
IZIN
if [ -f /home/needupdate ]; kemudian
merah "Skrip Anda perlu diperbarui terlebih dahulu!"
keluar 0
elif [ "$res" = "Izin Diterima..." ]; kemudian
gema -ne
kalau tidak
merah "Izin Ditolak!"
keluar 0
fi
fungsi cekvless(){
jernih
gema -n > /tmp/lainnya.txt
data=( `cat /etc/xray/config.json | grep '#&' | cut -d ' ' -f 2 | sort | uniq`);
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• PERBARUI VLESS USER • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"

untuk akun di "${data[@]}"
melakukan
if [[ -z "$akun" ]]; kemudian
akun = "tidak ada"
fi

gema -n > /tmp/ipvless.txt
data2=( `cat /var/log/xray/access.log | ekor -n 500 | cut -d " " -f 3 | sed 's/tcp://g' | cut -d ":" -f 1 | urutkan | uniq`);
untuk ip di "${data2[@]}"
melakukan

jum=$(cat /var/log/xray/access.log | grep -w "$akun" | tail -n 500 | cut -d " " -f 3 | sed 's/tcp://g' | cut -d ":" -f 1 | grep -w "$ip" | urutkan | uniq)
if [[ "$jum" = "$ip" ]]; kemudian
echo "$jum" >> /tmp/ipvless.txt
kalau tidak
gema "$ip" >> /tmp/other.txt
fi
jum2=$(kucing /tmp/ipvless.txt)
sed -i "/$jum2/d" /tmp/other.txt > /dev/null 2>&1
selesai

jum=$(cat /tmp/ipvless.txt)
if [[ -z "$jum" ]]; kemudian
gema > /dev/null
kalau tidak
jum2=$(cat /tmp/ipvless.txt | nl)
echo -e "$COLOR1 ${NC} pengguna : $akun";
echo -e "$COLOR1 ${NC} $jum2";
fi
rm -rf /tmp/ipvless.txt
selesai

rm -rf /tmp/other.txt
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema ""
read -n 1 -s -r -p "Tekan sembarang tombol untuk kembali ke menu"
menu-vless
}

fungsi tanpa pembaruan(){
jernih
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• PERBARUI VLESS USER • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
NUMBER_OF_CLIENTS=$(grep -c -E "^#& " "/etc/xray/config.json")
jika [[ ${NUMBER_OF_CLIENTS} == '0' ]]; kemudian
echo -e "$COLOR1 ${NC} • Anda tidak memiliki klien!"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema ""
read -n 1 -s -r -p "Tekan sembarang tombol untuk kembali ke menu"
menu-vless
fi
jernih
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• PERBARUI VLESS USER • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
grep -E "^#& " "/etc/xray/config.json" | potong -d ' ' -f 2-3 | kolom -t | urutkan | unik | nl
gema -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC} ${COLOR1}• ${WH}[${COLOR1}CATATAN${WH}] Tekan sembarang tombol untuk kembali ke menu"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e "$WARNA1────────────────────────────────────────────────────────────────────── ───────${NC}"
read -rp " Masukkan Nama Pengguna : " pengguna
if [ -z $pengguna ]; kemudian
menu-vless
kalau tidak
read -p " Expired (days): " masaaktif
if [ -z $masaaktif ]; kemudian
masaaktif="1"
fi
exp=$(grep -E "^#& $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
sekarang=$(tanggal +%Y-%m-%d)
d1=$(tanggal -d "$exp" +%s)
d2=$(tanggal -d "$sekarang" +%s)
exp2=$(( (d1 - d2) / 86400 ))
exp3=$(($exp2 + $masaaktif))
exp4=`tanggal -d "$exp3 hari" +"%Y-%m-%d"`
sed -i "/#& $user/c\#& $user $exp4" /etc/xray/config.json
systemctl restart xray > /dev/null 2>&1
jernih
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• PERBARUI VLESS USER • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} [INFO] $user Akun Berhasil Diperbaharui"
echo -e "$COLOR1 ${NC} "
echo -e "$COLOR1 ${NC} Nama Klien : $user"
echo -e "$COLOR1 ${NC} Hari Ditambahkan : $masaaktif Hari"
echo -e "$COLOR1 ${NC} Kedaluwarsa Pada : $exp4"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema ""
read -n 1 -s -r -p "Tekan sembarang tombol untuk kembali ke menu"
menu-vless
fi
}

function delvless(){
    jernih
NUMBER_OF_CLIENTS=$(grep -c -E "^#& " "/etc/xray/config.json")
jika [[ ${NUMBER_OF_CLIENTS} == '0' ]]; kemudian
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• DELETE VLESS USER • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} • Anda tidak memiliki klien!"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema ""
read -n 1 -s -r -p "Tekan sembarang tombol untuk kembali ke menu"
menu-vless
fi
jernih
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• DELETE VLESS USER • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
grep -E "^#& " "/etc/xray/config.json" | potong -d ' ' -f 2-3 | kolom -t | urutkan | unik | nl
gema -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC} ${COLOR1}• ${WH}[${COLOR1}CATATAN${WH}] Tekan sembarang tombol untuk kembali ke menu"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e "$WARNA1────────────────────────────────────────────────────────────────────── ───────${NC}"
read -rp " Masukkan Nama Pengguna : " pengguna
if [ -z $pengguna ]; kemudian
menu-vless
kalau tidak
exp=$(grep -wE "^#& $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
sed -i "/^#& $user $exp/,/^},{/d" /etc/xray/config.json
systemctl restart xray > /dev/null 2>&1
jernih
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• HAPUS VLESS USE • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} • Akun Berhasil Dihapus"
gema -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC} • Nama Klien : $user"
echo -e "$COLOR1 ${NC} • Kedaluwarsa Pada : $exp"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema ""
read -n 1 -s -r -p "Tekan sembarang tombol untuk kembali ke menu"
menu-vless
fi
}

fungsi tanpa addv(){
domain=$(cat /etc/xray/domain)
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• BUAT VLESS USER • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
tls="$(cat ~/log-install.txt | grep -w "Xray Vless Ws Tls" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Xray Vless Ws None Tls" | cut -d: -f2|sed 's/ //g')"
sampai [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; melakukan
		baca -rp " Masukkan Nama Pengguna : " -e pengguna
        if [ -z $pengguna ]; kemudian
echo -e "$COLOR1 ${NC} [Kesalahan] Nama pengguna tidak boleh kosong "
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema ""
read -n 1 -s -r -p "Tekan sembarang tombol untuk kembali ke menu"
Tidak bisa
fi
		CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

jika [[ ${CLIENT_EXISTS} == '1' ]]; kemudian
echo -e "$COLOR1 ${NC} Silakan pilih nama lain."
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema ""
read -n 1 -s -r -p "Tekan sembarang tombol untuk kembali ke menu"
Tidak bisa
fi
selesai

uuid=$(cat /proc/sys/kernel/random/uuid)
read -p " Expired (days): " masaaktif
exp=`date -d "$masaaktif hari" +"%Y-%m-%d"`
sed -i '/#vless$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#vlessgrpc$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
vlesslink1="vless://${uuid}@${domain}:$tls?path=/vlessws&security=tls&encryption=none&type=ws#${user}"
vlesslink2="vless://${uuid}@${domain}:$none?path=/vlessws&encryption=none&type=ws#${user}"
vlesslink3="vless://${uuid}@${domain}:$tls?mode=gun&security=tls&encryption=none&type=grpc&serviceName=vless-grpc&sni=bug.com#${user}"
maxis="vless://${uuid}@www.speedtest.net:$tls?path=wss://www.speedtest.net/vlessws&security=tls&encryption=none&type=ws&sni=www.speedtest.net&host=${domain }#${pengguna}"
maxis1="vless://${uuid}@support.sooka.my:$tls?path=wss://support.sooka.my/vlessws&security=tls&encryption=none&type=ws&sni=support.sooka.my&host=${domain }#${pengguna}"
celcom="vless://${uuid}@onlinepayment.celcom.com.my:$tls?path=wss://onlinepayment.celcom.com.my/vlessws&security=tls&encryption=none&type=ws&sni=onlinepayment.celcom.com .my&host=${domain}#${pengguna}"
umobile="vless://${uuid}@who.int:$tls?path=wss://who.int/vlessws&security=tls&encryption=none&type=ws&sni=who.int&host=${domain}#${pengguna} "
umobile1="vless://${uuid}@${domain}:$none?path=/vlessws&encryption=none&type=ws&host=pay-dcb.u.com.my#${user}"
digi="vless://${uuid}@162.159.134.61:$none?path=/vlessws&encryption=none&type=ws&host=${domain}#${user}"
yess="vless://${uuid}@cdn.who.int:$none?path=wss://cdn.who.int/vlessws&encryption=none&type=ws&host=${domain}#${user}"
systemctl restart xray
jernih
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLBG1} ${WH}• BUAT VLESS USER • ${NC} $COLOR1 $NC" | tee -a /etc/log-create-user.log
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Chols 4 Chempatan 4 Choll 4 Chasan 4 4 4 4 4 4 4 4 4 4 4 4 4 uman secara "s 44. ──────┘${NC}" | tee -a /etc/log-create-user.log
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}Keterangan ${COLOR1}: ${WH}${user}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}Kedaluwarsa Pada ${COLOR1}: ${WH}$exp" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}Domain ${COLOR1}: ${WH}${domain}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}port TLS ${COLOR1}: ${WH}$tls" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}port tidak ada TLS ${COLOR1}: ${WH}$none" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}id ${COLOR1}: ${WH}${uuid}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}Enkripsi ${COLOR1}: ${WH}none" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}Jaringan ${COLOR1}: ${WH}ws" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}Path ${COLOR1}: ${WH}/vless" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}Path ${COLOR1}: ${WH}vless-grpc" | tee -a /etc/log-create-user.log
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}" | tee -a /etc/log-create-user.log
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLOR1}Tautan Websocket TLS ${WH}:${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}${vlesslink1}${NC}" | tee -a /etc/log-create-user.log
gema -e "$WARNA1────────────────────────────────────────────────────────────────────── ──────${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLOR1}Tautan Websocket Tidak Ada TLS ${WH}: ${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}${vlesslink2}${NC}" | tee -a /etc/log-create-user.log
gema -e "$WARNA1────────────────────────────────────────────────────────────────────── ──────${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLOR1}Tautan Websocket GRPC ${WH}: ${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}${vlesslink3}${NC}" | tee -a /etc/log-create-user.log
gema -e "$WARNA1────────────────────────────────────────────────────────────────────── ──────${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLOR1}Maksis Booster Langganan ${WH}: ${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}${maxis}${NC}" | tee -a /etc/log-create-user.log
gema -e "$WARNA1────────────────────────────────────────────────────────────────────── ──────${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLOR1}Maksis Langganan Sooka ${WH}: ${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}${maxis1}${NC}" | tee -a /etc/log-create-user.log
gema -e "$WARNA1────────────────────────────────────────────────────────────────────── ──────${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLOR1}Celcom Tiada Langganan ${WH}: ${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}${celcom}${NC}" | tee -a /etc/log-create-user.log
gema -e "$WARNA1────────────────────────────────────────────────────────────────────── ──────${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLOR1}Umobile Freeze Basic ${WH}: ${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}${umobile}${NC}" | tee -a /etc/log-create-user.log
gema -e "$WARNA1────────────────────────────────────────────────────────────────────── ──────${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLOR1}Dasar Pengurangan Umobile ${WH}: ${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}${umobile1}${NC}" | tee -a /etc/log-create-user.log
gema -e "$WARNA1────────────────────────────────────────────────────────────────────── ──────${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLOR1}Digi Booster Langganan ${WH}: ${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}${digi}${NC}" | tee -a /etc/log-create-user.log
gema -e "$WARNA1────────────────────────────────────────────────────────────────────── ──────${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLOR1}Yes4G Tiada Langganan / Kedaluwarsa ${WH}: ${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}${yess}${NC}" | tee -a /etc/log-create-user.log
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC" | tee -a /etc/log-create-user.log
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Chols 4 Chempatan 4 Choll 4 Chasan 4 4 4 4 4 4 4 4 4 4 4 4 4 uman secara "s 44. ──────┘${NC}" | tee -a /etc/log-create-user.log
gema "" | tee -a /etc/log-create-user.log
read -n 1 -s -r -p "Tekan sembarang tombol untuk kembali ke menu" | tee -a /etc/log-create-user.log
menu-vless
}


jernih
gema -e "$COLOR1┌──────────────────────────────────────────────────────────────────────────────────── ──────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} • VLESS PANEL MENU • ${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
Echo -e "$ color1┌──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┐${NC}"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}01${WH}]${NC} ${COLOR1}• ${WH}ADD VLESS${NC} ${WH}[${COLOR1 }04${WH}]${NC} ${COLOR1}• ${WH}DELETE VLESS${NC} $COLOR1 $NC"
echo -e " $COLOR1 $NC ${NC} $COLOR1 $NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}02${WH}]${NC} ${COLOR1}• ${WH}TRIAL VLESS${NC} ${WH}[${COLOR1 }05${WH}]${NC} ${COLOR1}• ${WH}CHECK VLESS${NC} $COLOR1 $NC"
echo -e " $COLOR1 $NC ${NC} $COLOR1 $NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}03${WH}]${NC} ${COLOR1}• ${WH}RENEW VLESS${NC} ${WH}
echo -e " $COLOR1 $NC ${NC} $COLOR1 $NC"
echo -e " $COLOR1 $NC ${WH}[${COLOR1}00${WH}]${NC} ${COLOR1}• ${WH} KEMBALI${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}──────── ───────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${WH}• TARAP-KUHING •${NC} $COLOR1 $NC"
Echo -e "$ color1└──── teks─ bing Choll 4X 4 Choll 4 Chack 4X 4 Chack 4 Chack 4X 4 Choll 4 Chack 4 Chos 4X 4 Choll Choll Choll Choll 4x 4 Chack 4X Cholasanasanasanaskan 4.irim tolasanasanasanaskanarmaskan 4.irim tolasanarmaskan 4 ilangan ilangan harga> ilangan ilangan ilangan harga> ──────┘${NC}"
gema -e ""
echo -ne " ${WH}Pilih menu ${COLOR1}: ${WH}"; pilih baca
case $opt in
01 | 1) jelas; add-vless ; exit ;;
02 | 2) jelas; trialvless ; exit ;;
03 | 3) jelas; renew-vless ; exit ;;
04 | 4) jelas; del-vless ; exit ;;
05 | 5) clear ; cek-vless ; exit ;;
00 | 0) clear ; menu ; exit ;;
x  | x) exit ;;
*) echo "salah tekan " ; sleep 1 ; m-sshovpn ;;
esac
