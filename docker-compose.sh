#!/bin/bash
#
##################################################################################################################
# Name         :  docker-compose.sh
# Author       :  vekio
# Description  :  install docker-compose on ubuntu
# Notes        :  https://docs.docker.com/install/linux/docker-ce/debian/
#                 https://docs.docker.com/compose/install/
##################################################################################################################

VERSION=1.25.4

# install docker-compose bin
sudo curl -L "https://github.com/docker/compose/releases/download/$VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# give the execution permissions
sudo chmod +x /usr/local/bin/docker-compose

