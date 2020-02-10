#!/bin/bash

##################################################################################################################
# Version	:	1.1
# Author	:	vekio
# Purpose	:	install terraform (linux 64-bit)
# Comments	:	Upgrade to version 0.12.20
#               https://www.terraform.io/downloads.html
##################################################################################################################

# download link
LINK=https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip

# zip file name
ZIP=$(echo "${LINK##*/}")

# check for unzip
command -v unzip >/dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Aborting."; exit 1; }

# download terraform
cd /tmp
wget $LINK

# install terraform
unzip $ZIP
sudo mv terraform /usr/local/bin/

# remove terraform.zip
rm $ZIP
