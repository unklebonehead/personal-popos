
# Autostart applications
# /usr/lib/x86_64-linux-gnu/polkit-mate/polkit-mate-authentication-agent-1 &
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
# nitrogen --restore; sleep 1;
# xrandr --output DisplayPort-0 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --primary --mode 1920x1080 --pos 979x1080 --rotate normal --output DVI-D-0 --mode 1920x1080 --pos 1920x0 --rotate normal &
# arandr &
~/bin/polybar-i3 &
flatpak run com.github.debauchee.barrier &
# feh --bg-fill ~/Pictures/Wallpapers/nord/nord-hive.png &
feh --bg-fill "$HOME/.config/i3/wallpaper.jpg"
picom -b &
numlockx on &
# nm-applet &
# volumeicon &
dunst &
# blueman-applet &

# sxhkd
sxhkd -c ~/.config/i3/sxhkd/sxhkdrc &
