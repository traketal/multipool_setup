#!/usr/bin/env bash


#########################################################
# Source https://mailinabox.email/ https://github.com/mail-in-a-box/mailinabox
# Updated by cryptopool.builders for crypto use...
# This script is intended to be ran from the multipool installer
#########################################################

if [ -z "${TAG}" ]; then
	TAG=v1.12
fi

# Clone the MultiPool repository if it doesn't exist.
if [ ! -d $HOME/multipool/nomp ]; then
	echo Downloading MultiPool NOMP Server Installer ${TAG}. . .
	git clone https://github.com/traketal/multipool_nomp \
		$HOME/multipool/nomp \
		< /dev/null 2> /dev/null

	echo
fi

# Start setup script.
cd $HOME/multipool/nomp
source start.sh
