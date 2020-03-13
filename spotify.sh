#!/bin/bash
#
##################################################################################################################
# Name         :  spotify.sh
# Author       :  vekio
# Description  :  install spotify
# Notes        :  
##################################################################################################################

# add debian/ubuntu repository
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# update packages list
sudo apt update

# install spotify client
sudo apt install -y spotify-client
