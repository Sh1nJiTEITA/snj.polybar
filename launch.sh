#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybarmain.log 
# polybar sub 2>&1 | tee -a /tmp/polybar1.log & disown
polybar main 2>&1 | tee -a /tmp/polybar_main.log & disown
polybar sub 2>&1 | tee -a /tmp/polybar_sub.log & disown

echo "Bars launched..."
