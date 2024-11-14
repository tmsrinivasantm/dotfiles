#!/bin/bash

var=$(xinput --list | grep 'MSFT0001:01 04F3:309E Touchpad' | awk '{print $6}' | awk -F '=' '{print $2}')
xinput --set-prop "$var" 'libinput Natural Scrolling Enabled' 1
xinput --set-propo "$var" 'libinput Tapping Enabled' 1
picom -b --config ~/.config/picom/picom.conf &
nm-applet &
dunst &
blueman-applet &
alacritty --daemon &
keepassxc "$HOME/.config/keepassxc/databases/Passwords.kdbx" &
flameshot &
sleep 15 && xset s 600 5 && xss-lock -n /usr/lib/xsecurelock/dimmer -l -- xsecurelock &
