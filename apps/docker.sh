#!/bin/bash
#
##################################################################################################################
# Name			:	docker.sh
# Author		:	vekio
# Description	:	install docker on ubuntu
# Notes			:	https://docs.docker.com/install/linux/docker-ce/debian/
#					https://docs.docker.com/compose/install/
##################################################################################################################

# update the package lists
sudo apt-get update

# requirements
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# add docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# set up the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# update package index
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# allow your user to access the docker cli without needing root access
sudo usermod -aG docker alberto

sudo apt-get install -y python3 python3-pip

# install docker-compose using python3 and pip3
sudo pip3 install docker-compose
