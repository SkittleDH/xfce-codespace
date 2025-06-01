#!/bin/bash

mkdir -p ~/.vnc
echo "123456" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

vncserver :1
vncserver -kill :1

echo "#!/bin/sh
xrdb $HOME/.Xresources
startxfce4 &" > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

vncserver :1
/opt/novnc/utils/launch.sh --vnc localhost:5901 --listen 6080 &
