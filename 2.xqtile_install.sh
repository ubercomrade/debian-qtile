#!/bin/bash

#Xorg + Qtile
sudo apt install -y pipx
sudo apt install -y xserver-xorg xinit
sudo apt install -y libpangocairo-1.0-0
sudo apt install -y python3-pip python3-xcffib python3-cairocffi
pipx install qtile

#Extra tools
sudo apt install -y rofi dunst picom nvim

# Xsessions Desktop file
cat > ./temp << "EOF"
[Desktop Entry]
Name=Qtile
Comment=Qtile Session
Type=Application
Keywords=wm;tiling
EOF

if [[ ! -e /usr/share/xsessions ]];
then 
    sudo mkdir /usr/share/xsessions
fi
sudo cp ./temp /usr/share/xsessions/qtile.desktop
sudo echo "Exec=/home/$USER/.local/bin/qtile start" | sudo tee -a /usr/share/xsessions/qtile.desktop

# Cleanup
rm ./temp
