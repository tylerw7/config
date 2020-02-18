#!/usr/bin/env bash

killall -q polybar

echo "---" | tee -a /tmp/bar1.log /tmp/bar2.log
polybar bar1 >> /tmp/bar1.log 2>&1 &
polybar bar2 >> /tmp/bar2.log 2>&1 &

echo "Bars launched..."
