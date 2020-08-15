(monitors && picom --vsync -b && xwallpaper --zoom ~/.cache/bg) &

# disable monitor sleeping (doesn't come back on w/o restart)
# turn off screen-saver
xset s off
# disable display power management signaling
xset -dpms

# mpd &
# mpc volume 50 &

dunst &
sxhkd &
launch_wm
