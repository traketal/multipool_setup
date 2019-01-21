#!/usr/bin/env bash
#########################################################
# Source https://mailinabox.email/ https://github.com/mail-in-a-box/mailinabox
# Updated by cryptopool.builders for crypto use...
# This script is intended to be ran from the multipool installer
#########################################################

if [ -z "${TAG}" ]; then
	TAG=v1.20
fi

# Clone the MultiPool repository if it doesn't exist.
if [ ! -d $HOME/multipool/daemon_builder ]; then
	echo Downloading MultiPool Daemon Builder Installer ${TAG}. . .
	git clone https://github.com/traketal/multipool_coin_builder \
		$HOME/multipool/daemon_builder \
		< /dev/null 2> /dev/null

	echo
fi



# Start setup script.
cd $HOME/multipool/daemon_builder
source install.sh
