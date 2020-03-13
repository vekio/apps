#!/bin/bash
#
##################################################################################################################
# Name         :  etcher.sh
# Author       :  vekio
# Description  :  install etcher
# Notes        :  https://www.balena.io/etcher/
#                 https://github.com/balena-io/etcher#debian-and-ubuntu-based-package-repository-gnulinux-x86x64
##################################################################################################################

# add repository
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list

# add gpg key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61

# update packages list
sudo apt update

# install spotify client
sudo apt install -y balena-etcher-electron
