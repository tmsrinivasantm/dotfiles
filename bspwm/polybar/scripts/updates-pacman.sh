#!/bin/bash

if [ ! -f /etc/arch-release ]; then
	exit 0
fi

# Check for updates
aur=$(yay -Qua | wc -l)
ofc=$(pacman -Qu | wc -l)

# Calculate total available updates
	upd=$(( ofc + aur ))
	echo "$upd"
