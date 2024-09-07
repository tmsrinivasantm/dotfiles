#!/bin/bash

var=$(xinput --list | grep 'MSFT0001:01 04F3:309E Touchpad' | awk '{print $6}' | awk -F '=' '{print $2}')
xset s 120 5
xinput --set-prop "$var" 'libinput Natural Scrolling Enabled' 1
xinput --set-propo "$var" 'libinput Tapping Enabled' 1
picom -b --config ~/.config/picom/picom.conf &
nm-applet &
dunst &
xss-lock -n /usr/lib/xsecurelock/dimmer -l -- xsecurelock &
