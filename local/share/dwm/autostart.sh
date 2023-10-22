#!/usr/bin/env bash

slstatus &

# network applet
nm-applet &

# background
feh --bg-scale ~/.config/backgrounds/debdino.png &

# compositor
picom --config ~/.config/picom/picom.conf &

# sxhkd
sxhkd -c ~/.config/suckless/sxhkd/sxhkdrc &

# Notifications
dunst &

# volume
volumeicon &
