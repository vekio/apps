#!/bin/bash
#
##################################################################################################################
# Name         :  key.sh
# Author       :  vekio
# Description  :  generate a ssh key and save it in my keybase account
#                 upload the public key to the server and create a ssh profile
# Notes        :  
##################################################################################################################

KEYBASE_FOLDER=
HOSTNAME=
IP=
PORT=
USER=

# generate ssh key
ssh-keygen -f $KEYBASE_FOLDER/$HOSTNAME -t rsa -b 4096 -C "" -N ''

# remove the know host
ssh-keygen -f "~/.ssh/known_hosts" -R "$IP"

# upload the public key to the raspberrypi
ssh-copy-id -i $KEYBASE_FOLDER/$HOSTNAME.pub $USER@$IP

# generate .ssh/config profile
echo -e "# $HOSTNAME\nHost $HOSTNAME\n  HostName $IP\n  Port $SSHPORT\n  User $USER\n  IdentityFile $KEYBASE_FOLDER/$HOSTNAME" | tee -a ~/.ssh/config
