#!/usr/bin/env bash

killall -q polybar

echo "---" | tee -a /tmp/mybar.log
polybar mybar >> /tmp/mybar.log 2>&1 &

echo "Bars launched..."
