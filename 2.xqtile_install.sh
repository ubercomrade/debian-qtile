#!/bin/bash

#Xorg + Qtile
sudo apt update
sudo apt install pipx
sudo apt install xserver-xorg xinit
sudo apt install libpangocairo-1.0-0
sudo apt install python3-pip python3-xcffib python3-cairocffi
pipx install qtile

# Xsessions Desktop file
cat > ./temp << "EOF"
[Desktop Entry]
Name=Qtile
Comment=Qtile Session
Type=Application
Keywords=wm;tiling
EOF

sudo cp ./temp /usr/share/xsessions/qtile.desktop
sudo echo "Exec=/home/$USER/.local/bin/qtile start" | sudo tee -a /usr/share/xsessions/qtile.desktop

# Cleanup
rm ./temp
