#/!bin/bash

##################################################################################################################
# Version	:	1.0
# Author	:	vekio
# Purpose	:	this script generate ssh key and it save it in my keybase account, also create a profile in
#               ssh/config and upload the public key to the server
# Comments	:	
#
# NOT TESTED YET
#
##################################################################################################################

# variables
COMMENT=""          # profile comment
FNAME=""            # file name
HNAME=""            # host name
HIP=""              # host IP or URL
USERNAME=""         # server's usename

# first run keybase
run_keybase

# generate ssh key
ssh-keygen -f /keybase/private/vekio/keys/$FNAME -t rsa -b 4096 -C "" -N ''

# upload the public key to the server
ssh-copy-id -i /keybase/private/vekio/keys/$FNAME.pub $USERNAME@$HIP 

# generate .ssh/config profile
echo -e "# $COMMENT\n  Host $HNAME\n  HostName $HIP\n  User $USERNAME\n  IdentifyFile /keybase/private/vekio/keys/$FNAME" | tee -a $HOME/.ssh/config
