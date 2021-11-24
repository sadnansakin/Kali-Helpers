#!/usr/bin/bash
echo "RUN KALI ON BROWSER..."
sleep 5
echo "UPDATING KALI LINUX..."
sleep 5
sudo apt update
clear
echo "INSTALLING NOVNC X11VNC..."
sleep 5
sudo apt install -y novnc x11vnc
clear
echo "CONFIGURE X11VNC..."
sleep 5
x11vnc -display :0 -autoport -localhost -nopw -bg -xkb -ncache -ncache_cr -quiet -forever
ss -antp | grep vnc
clear
/usr/share/novnc/utils/launch.sh --listen 8081 --vnc localhost:5900
echo "ENABLE SSH.."
sleep 5
sudo systemctl enable ssh --now
