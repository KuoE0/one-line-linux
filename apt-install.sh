#!/usr/bin/env bash
#
# apt-install.sh
# Copyright (C) 2013 KuoE0 <kuoe0.tw@gmail.com>
#
# Distributed under terms of the MIT license.
#

IFS=$'\n'
PACKAGES=$(cat apt-packages)

for LINE in $PACKAGES; do
	PKG=$(echo $LINE | cut -d',' -f1)
	PPA=$(echo $LINE | cut -d',' -f2)
	REGEX=$(echo $LINE | cut -d',' -f3)
	CANDIDATE=""
	# if [ ! $REGEX == "" ]; then
	# 	CANDIDATE=$(apt-cache search $PKG | grep -E $REGEX | tail -n 1)
	# else
	# 	CANDIDATE=$(apt-cache search $PKG | tail -n 1)
	# fi
	echo "===== $PKG ====="
	apt-cache search $PKG | grep -E "^$PKG"
	echo 
	# sudo apt-get install -y $PKG
done

# apt-cache search clang|grep -E "^clang-[[:digit:]]+\.[[:digit:]][[:space:]]"
