#!/bin/sh

sudo apt-get install build-essential -y
wget http://www.udpxy.com/download/1_23/udpxy.1.0.23-9-prod.tar.gz
tar -xzvf udpxy.1.0.23-9-prod.tar.gz
cd udpxy-1.0.23-9
sudo make install
sudo cp -r etc /
sudo systemctl enable udpxy.service
sudo service udpxy stop
sudo service udpxy start
sudo service udpxy status