#!/bin/bash
#
##################################################################################################################
# Name         :  terraform.sh
# Author       :  vekio
# Description  :  install terraform, manage existing and popular service providers
# Notes        :  https://www.terraform.io/downloads.html
##################################################################################################################

VERSION=0.12.23
LINK=https://releases.hashicorp.com/terraform/$VERSION/terraform_$VERSION_linux_amd64.zip

# zip file name
ZIP=$(echo "${LINK##*/}")

# requirements: unzip
command -v unzip >/dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Aborting."; exit 1; }

# download terraform
cd /tmp
wget $LINK

# install terraform
unzip $ZIP
sudo mv terraform /usr/local/bin/
rm $ZIP

