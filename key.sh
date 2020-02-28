#!/bin/bash
#
##################################################################################################################
# Name			:	key.sh
# Author		:	vekio
# Description	:	generate a ssh key and save it in my keybase account
#					upload the public key to the server and create a ssh profile
# Notes			:	
##################################################################################################################

# variables
HOSTNAME=
HOSTIP=
SSHPORT=

# first run keybase
#run_keybase
#ls /keybase/private/vekio/keys

# generate ssh key
ssh-keygen -f /keybase/private/vekio/keys/$HOSTNAME -t rsa -b 4096 -C "" -N ''

# remove the know host
ssh-keygen -f "/home/alberto/.ssh/known_hosts" -R "$HOSTIP"

# upload the public key to the raspberrypi
ssh-copy-id -i /keybase/private/vekio/keys/$HOSTNAME.pub alberto@$HOSTIP

# generate .ssh/config profile
echo -e "# $HOSTNAME\nHost $HOSTNAME\n  HostName $HOSTIP\n  Port $PORT\n  User alberto\n  IdentityFile /keybase/private/vekio/keys/$HOSTNAME" | tee -a /home/alberto/.ssh/config
