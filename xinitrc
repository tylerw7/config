dunst &

(xrandr \
--output DP-2 --mode 2560x1440 --rate 60 --primary \
--output DP-1 --mode 2560x1440 --rate 144 --right-of DP-2 \
--output DP-3 --mode 2560x1440 --rate 60 --right-of DP-1 --rotate left) &

picom --vsync -b &
sxhkd &
# mpd &
# mpc volume 50 &
xwallpaper --zoom ~/.cache/bg && ~/.local/bin/launch_wm 
