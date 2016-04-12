#!/bin/sh

# This script installs boot-notification.js for ARM into ~/scripts
# Run it like this: "curl -s link-to-github.sh | sudo sh"

cd ~

if [ ! -d "rpi-scripts" ]
then
    git clone https://github.com/p4d-tomi/rpi-scripts.git
else
    cd rpi-scripts
    git pull
fi


cd ~/rpi-scripts/boot-notification
npm install
