sudo apt update
sudo apt install -y xfce4
sudo apt-get install -y tightvncserver
tightvncserver :1
tightvncserver -kill :1


cat > ~/.vnc/xstartup <<END
#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &
END

tightvncserver -geometry 1600x900 :1
