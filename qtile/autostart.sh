#!/bin/sh
nm-applet &

# xrandr
xrandr --output DisplayPort-0 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --primary --mode 1920x1080 --pos 979x1080 --rotate normal --output DVI-D-0 --mode 1920x1080 --pos 1920x0 --rotate normal

# background
#feh --bg-scale ~/.config/backgrounds/Wallpaperkiss_1208315.jpg &
#feh --bg-scale ~/Pictures/Wallpapers/nord/nord-hive.png
feh --bg-scale ~/Pictures/Wallpapers/nord/Abstract-Nord.png
# compositor
picom --config ~/.config/picom/picom.conf &

# sxhkd
sxhkd -c ~/.config/qtile/sxhkd/sxhkdrc &

# Notifications
dunst &

# Barrier
flatpak run com.github.debauchee.barrier
