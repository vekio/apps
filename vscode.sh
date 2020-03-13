#!/bin/bash
#
##################################################################################################################
# Name         :  vscode.sh
# Author       :  vekio
# Description  :  install vscode editor from microsoft repository
# Notes        :  
##################################################################################################################

cd ~/.

# download the release key
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

# add the gpg key
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/

# add microsoft repository
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# update the packages list
sudo apt get update

# requirements
sudo apt install -y apt-transport-https

# install vscode
sudo apt install -y code

# remove gpg
remove ~/microsoft.gpg
