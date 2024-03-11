#!/bin/bash

git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
sudo make
sudo make install installsystemd
sudo systemctl enable ly.service
cd ../
rm -rf ./ly
