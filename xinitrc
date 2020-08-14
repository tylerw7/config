picom --vsync -b &
(xrandr \
--output DP-2 --mode 2560x1440 --rate 60 --primary \
--output DP-1 --mode 2560x1440 --rate 144 --right-of DP-2 \
--output DP-3 --mode 2560x1440 --rate 60 --right-of DP-1 --rotate left) &

dunst &
sxhkd &
xwallpaper --zoom ~/.cache/bg && ~/.local/bin/launch_wm 

# disable monitor sleeping (doesn't come back on w/o restart)
# turn off screen-saver
xset s off
# disable display power management signaling
xset -dpms

# mpd &
# mpc volume 50 &
