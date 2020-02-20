#!/bin/bash
#
##################################################################################################################
# Name			:	terraform.sh
# Author		:	vekio
# Description	:	install terraform v0.12.20
# Notes			:	https://www.terraform.io/downloads.html
##################################################################################################################

# download link
LINK=https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip

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
