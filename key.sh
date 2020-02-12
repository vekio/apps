#/!bin/bash

##################################################################################################################
# Version	:	1.0
# Author	:	vekio
# Purpose	:	generate ssh key and save it in my keybase account
# Comments	:	gives the option to create a profile in ssh/config and the option to upload 
#               the public key to the server
##################################################################################################################

# variables
COMMENT=""          # profile comment
FNAME=""            # file name
HNAME=""            # host name
HIP=""              # host IP or URL

# first run keybase
run_keybase

# generate ssh key
ssh-keygen -f /keybase/private/vekio/keys/$FNAME -t rsa -b 4096 -C ""

# generate .ssh/config profile
echo -e "# $COMMENT\n\tHost $HNAME\n\tHostName $HIP\n\tUser $USER\n\tIdentifyFile /keybase/private/vekio/keys/$FNAME" | sudo tee -a $HOME/.ssh/config

# upload the public key to the server
ssh-copy-id -i /keybase/private/vekio/keys/$FNAME $USER@$HIP
