#!/bin/sh

# This script installs Node.js 4.0.0 for ARM into /usr/local
# Run it like this: "curl -s link-to-github.sh | sudo sh"

cd ~

echo "\nDownloading node.js ..."
wget https://nodejs.org/dist/v4.0.0/node-v4.0.0-linux-armv7l.tar.gz

echo "\nExtracting node.js into local folder..."
tar -xvf node-v4.0.0-linux-armv7l.tar.gz
cd node-v4.0.0-linux-armv7l

echo "\nCopying node.js to /usr/local ..."
sudo cp -R * /usr/local
cd ~

echo "\nCleaning up local folder"
rm -r node-v4.0.0-linux-armv7l
rm node-v4.0.0-linux-armv7l.tar.gz

echo "\nDone!"
