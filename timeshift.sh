#!/bin/bash
#
##################################################################################################################
# Name         :  timeshift.sh
# Author       :  vekio
# Description  :  install timeshift
# Notes        :  
##################################################################################################################

# add debian/ubuntu repository
sudo add-apt-repository -y ppa:teejee2008/ppa

# update packages list
sudo apt update

# install timeshift
sudo apt install -y timeshift
