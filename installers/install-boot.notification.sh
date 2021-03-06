#!/bin/bash

# This script installs boot-notification.js for ARM into ~/scripts
# Run it like this: "curl -s link-to-github.sh | sudo sh"

if [ ! -d /home/pi/rpi-scripts ]
then
    echo "RPi scripts not found. Cloning from GitHub"
    cd /home/pi
    git clone --verbose https://github.com/p4d-tomi/rpi-scripts.git
else
    echo "RPi scripts found. Pulling from GitHub"
    cd /home/pi/rpi-scripts
    git pull
fi


echo "Installing dependencies ..."
cd /home/pi/rpi-scripts/boot-notification
npm install
