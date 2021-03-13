# Inmersoft Team 2021 
# Este script pertenece al grupo Inmersoft
# Derechos Reservados   
# Programado por 
# ---- Orlando Novas Rodriguez onovas05@gmail.com
# ---- Carlos Mora Gonzalez    doom97.demo@gmail.com 
#

echo off
cls
echo Created by InmersoftHackers
echo Inmersoft Connections Tools v0.1

echo Desconectando todo...
openvpn-gui --command disconnect_all
echo Deshabilitando interface de red Ethernet...
netsh interface set interface "Ethernet" disabled

echo Deshabilitando interface de red Wi-Fi...
netsh interface set interface "Wi-Fi" disabled

echo Interface de red Deshabilitada

timeout 2

echo Habilitando interface de red Ethernet...
netsh interface set interface "Ethernet" enabled

echo Habilitando interface de red Wi-Fi...
netsh interface set interface "Wi-Fi" enabled

echo Interface de red Habilitada Ethernet
echo Interface de red Habilitada "Wi-Fi"

timeout 5

echo Reiniciando OPEN VPN GUI
openvpn-gui --connect uo.ovpn

echo HAPPY DAY !!!
