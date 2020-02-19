#!/usr/bin/env bash

killall -q polybar

# Get connected MONITORS (1 and 2) env vars, TODO: Make this faster
# . ~/.scripts/monitors.sh

# This also takes too long (slightly better?)
MONITORS=$(polybar -m)
export MONITOR1=$(echo "$MONITORS" | grep "DP" | sed -e 's/:.*$//g')
export MONITOR2=$(echo "$MONITORS" | grep "HDMI" | sed -e 's/:.*$//g')

echo "---" | tee -a /tmp/bar1.log /tmp/bar2.log
polybar bar1 >> /tmp/bar1.log 2>&1 &
polybar bar2 >> /tmp/bar2.log 2>&1 &

echo "Bars launched..."

