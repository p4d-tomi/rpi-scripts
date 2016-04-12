
# Expand Root FS
#sudo raspi-config --expand-rootfs
#sudo reboot


# Install Node.js v4.0.0
curl -s https://raw.githubusercontent.com/p4d-tomi/rpi-scripts/master/installers/install-node.sh | sudo sh

# Install boot-notification script
curl -s https://raw.githubusercontent.com/p4d-tomi/rpi-scripts/master/installers/install-boot.notification.sh | sh




# Replace /etc/rc.local
sudo cp /etc/rc.local /etc/rc.local.bkp
sudo curl -s https://raw.githubusercontent.com/p4d-tomi/rpi-scripts/master/installers/rc.local -o /etc/rc.local


# Reboot
sudo reboot
