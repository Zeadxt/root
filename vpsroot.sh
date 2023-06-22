#!/bin/bash
apt install lolcat -yy
wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/Zeadxt/root/main/sshd_config;
systemctl restart sshd;
clear;
echo -e "Masukkan Password:";
read -e pwe;
usermod -p `perl -e "print crypt("$pwe","Q4")"` root;
clear;
printf "Mohon Simpan Informasi Akun VPS Ini
============================ | lolcat
Ip address = $(curl -Ls http://ipinfo.io/ip) | lolcat
Username   = root | lolcat
Password   = $pwe | lolcat
Login      = root@${pwe} | lolcat
VPS AKAN REBOOT DALAM 10 DETIK
By : FREE TUNNELING PROJECT | lolcat
============================; | lolcat
echo "";
sleep 5
echo "SIMPAN USER & PASSWORD BAIK BAIK"
sleep 5
reboot
