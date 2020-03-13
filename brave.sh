#!/bin/bash
#
##################################################################################################################
# Name         :  brave.sh
# Author       :  vekio
# Description  :  install web browser brave
# Notes        :  
##################################################################################################################

# install requirements
sudo apt install -y \
    apt-transport-https \
    curl

# add brave repository
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# update the packages list
sudo apt update

# install brave
sudo apt install brave-browser
