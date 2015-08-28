#! /usr/bin/env bash
#
# setup.sh
# Copyright (C) 2013 KuoE0 <kuoe0.tw@gmail.com>
#
# Distributed under terms of the MIT license.
#
# Usage: ./setup.sh

########################
# package installation #
########################

# change mirror to NCHC
CURRENT_MIRROR=$(cat /etc/apt/sources.list | grep main | awk '{ print $2}' | cut -d'/' -f3 | sed -n '3P')
sudo sed -i "s/$CURRENT_MIRROR/free.nchc.org.tw/g" /etc/apt/sources.list
sudo apt-get update

# add 3-party repostory
bash sources-add.sh

# install packages
bash apt-install.sh

#################
# ssh configure #
#################

# disable remote login using root account
sudo sed -i -e 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
# restart ssh
sudo service ssh restart

