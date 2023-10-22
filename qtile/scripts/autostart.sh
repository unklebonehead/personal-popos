#!/bin/bash

function run {
  if ! pgrep -x $(basename $1 | head -c 15) 1>/dev/null;
  then
    $@&
  fi
}


# Wallpaper #
feh --bg-fill /home/unklebonehead/Pictures/PurpleWallpaper/80-Abstract-Purple-Wallpapers-on-WallpaperPlay.jpg &

#xrandr
xrandr --output DisplayPort-0 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --primary --mode 1920x1080 --pos 979x1080 --rotate normal --output DVI-D-0 --mode 1920x1080 --pos 1920x0 --rotate normal

# SXHKD #
run sxhkd -c ~/.config/qtile/sxhkd/sxhkdrc &


# Utility Applications #

run nm-applet &
#run pamac-tray &
run xfce4-power-manager &
numlockx on &
blueman-applet &
#blueberry-tray &
picom --config $HOME/.config/qtile/scripts/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
/usr/bin/dunst &
run barrier &

# User Applications #

run volumeicon &


