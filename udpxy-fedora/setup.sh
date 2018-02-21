#!/bin/sh

sudo dnf install udpxy -y
sudo cp -r etc /
sudo systemctl enable udpxy.service
sudo service udpxy stop
sudo service udpxy start
sudo service udpxy status