#!/bin/bash
#
##################################################################################################################
# Name			:	vim.sh
# Author		:	vekio
# Description	:	install vim and set up my personal config
# Notes			:	
##################################################################################################################

# update the package lists
sudo apt-get update

# install git
sudo apt-get install -y vim

# download my .vimrc
wget -O ~/.vimrc https://raw.githubusercontent.com/vekio/dotfiles/master/.vimrc
