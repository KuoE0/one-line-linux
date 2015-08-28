#! /bin/bash
#
# add-sources.sh
# Copyright (C) 2013 KuoE0 <kuoe0.tw@gmail.com>
#
# Distributed under terms of the MIT license.
#

sudo apt-get install -y software-properties-common

# Google Chrome <google-chrome-stable>
# ====================================
# download and install the key from Google Linux Repository
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
# add it to the repository
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Intel Linux Graphic Drive <intel-linux-graphics-installer>
# ==========================================================
# download and install the key 
wget --no-check-certificate https://download.01.org/gfx/RPM-GPG-KEY-ilg -O - | \
sudo apt-key add -
# add it to the repository
sudo sh -c 'echo "deb https://download.01.org/gfx/ubuntu/13.04/main/ Ubuntu 13.04" >> /etc/apt/sources.list.d/intel.list'

# ReText <retext>
# ==============
# add PPA to repository 
sudo add-apt-repository -y ppa:mitya57/ppa

# Elementary Theme <elementaryish>
# ================================
# add PPA to repository 
sudo add-apt-repository -y ppa:noobslab/themes

# Faenza Icon Theme <faenza-icon-theme>
# =====================================
# add PPA to repository 
sudo add-apt-repository -y ppa:tiheum/equinox

# Ubuntu Tweak <ubuntu-tweak>
# ===========================
# add PPA to repository 
sudo add-apt-repository -y ppa:tualatrix/ppa

# Sublime Text <sublime-text>
# ===========================
# add PPA to repository 
sudo add-apt-repository -y ppa:webupd8team/sublime-text-2

# MPT File System <go-mtpfs-unity>
# ===========================
# add PPA to repository 
sudo add-apt-repository -y ppa:webupd8team/unstable

# Dropbox <dropbox>
# ====================================
# download and install the key
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
# add it to the repository
sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ raring main" >> /etc/apt/sources.list.d/dropbox.list' 

# Y PPA Manager <y-ppa-manager>
# ====================================
# download and install the key
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager

sudo apt-get update

