#!/bin/bash
#
##################################################################################################################
# Name         :  telegram.sh
# Author       :  vekio
# Description  :  install telegram from unofficial repository atareao
# Notes        :  https://www.atareao.es/
#                 https://www.omgubuntu.co.uk/2019/08/how-to-install-telegram-on-ubuntu
##################################################################################################################

# add repository
sudo add-apt-repository ppa:atareao/telegram

# update the packages list
sudo apt get update

# install telegram
sudo apt install -y telegram
