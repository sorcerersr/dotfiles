#!/bin/env sh
# runs polybar for each connected monitor

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload sorcsbar &
  done
else
  polybar --reload sorcsbar &
fi