#!/bin/bash
#
##################################################################################################################
# Version   :   1.0
# Author 	:   vekio
# Purpose   :   install terraform in linux 64-bit machine
# Links     :   https://www.terraform.io/downloads.html
# Comments	:	version of Terraform (0.12.17)
##################################################################################################################

cd /tmp
wget https://releases.hashicorp.com/terraform/0.12.17/terraform_0.12.17_linux_amd64.zip
unzip terraform_0.12.17_linux_amd64.zip
sudo mv terraform /usr/local/bin/
rm terraform_0.12.17_linux_amd64.zip
