#!/bin/bash
#
##################################################################################################################
# Name         :  vim.sh
# Author       :  vekio
# Description  :  install vim
# Notes        :  
##################################################################################################################

# update the package lists
sudo apt update

# install git
sudo apt install -y vim

# download my .vimrc
wget -O ~/.vimrc https://raw.githubusercontent.com/vekio/dotfiles/master/.vimrc
