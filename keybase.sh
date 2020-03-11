#!/bin/bash
#
##################################################################################################################
# Name         :  keybase.sh
# Author       :  vekio
# Description  :  install keybase
# Notes        :  
##################################################################################################################

# download deb package
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb

# install keybase
sudo apt install -y ./keybase_amd64.deb

# run keybase app
run_keybase

