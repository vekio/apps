#!/bin/bash
#
##################################################################################################################
# Name			:	git.sh
# Author		:	vekio
# Description	:	install git and set up global config
# Notes			:	ubuntu/debian systems
##################################################################################################################

# update the package lists
sudo apt-get update

# install git
sudo apt install -y git

# git global config
git config --global user.name vekio
git config --global user.email albertocasta@protonmail.com
