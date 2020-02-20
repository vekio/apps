#!/bin/bash
#
##################################################################################################################
# Name			:	htpasswd.sh
# Author		:	vekio
# Description	:	install htpasswd
# Notes			:	https://linux.die.net/man/1/htpasswd
#                   man 1 htpasswd
##################################################################################################################

# update the package lists
sudo apt-get update

# install httpasswd
sudo apt-get install -y apache2-utils
