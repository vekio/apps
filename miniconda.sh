#!/bin/bash
#
# Install Miniconda
# https://docs.conda.io/en/latest/miniconda.html

wget -P /tmp/ https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

bash /tmp/Miniconda3-latest-Linux-x86_64.sh

rm /tmp/Miniconda3-latest-Linux-x86_64.sh

# Hide auto environment base
source ~/.bashrc
conda config --set auto_activate_base false
