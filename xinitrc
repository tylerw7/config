dunst &
xrandr --output HDMI1 --mode 1920x1080 --rate 60 --output DP-1-2 --mode 2560x1440 --rate 165 --left-of HDMI1 &
picom --vsync -b &
sxhkd &
# mpd &
# mpc volume 50 &
xwallpaper --zoom ~/.cache/bg && ~/.local/bin/launch_wm 
