#!/bin/bash

#Create standart directories for user
xdg-user-dirs-update

#Update
sudo apt update

#Tools
sudo apt install -y neofetch vim ranger mc alacrity

#Audio
sudo apt install -y wireplumber pipewire-pulse pipewire-alsa pipewire-audio-client-libraries pipewire-media-session-
systemctl --user --now enable wireplumber.service
sudo touch /etc/pipewire/media-session.d/with-jack
sudo cp /usr/share/doc/pipewire/examples/ld.so.conf.d/pipewire-jack-*.conf /etc/ld.so.conf.d/
sudo ldconfig

#Fonts
sudo apt install -y fonts-jetbrains-mono fonts-font-awesome fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus


