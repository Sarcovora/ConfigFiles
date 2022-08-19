#!/bin/bash

# Terminate already running bar instances
# killall -q polybar
# # If all your bars have ipc enabled, you can also use
# # polybar-msg cmd quit

# # Launch Polybar, using default config location ~/.config/polybar/config.ini
# polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

(
  flock 200

  killall -q polybar

  while pgrep -u $UID -x polybar > /dev/null; do sleep 0.5; done

  outputs=$(xrandr --query | grep " connected" | cut -d" " -f1)
  tray_output=eDP1

  for m in $outputs; do
    if [[ $m == "HDMI1" ]]; then
        tray_output=$m
    fi
  done

  for m in $outputs; do
    export MONITOR=$m
    export TRAY_POSITION=none
    if [[ $m == $tray_output ]]; then
      TRAY_POSITION=right
    fi

    polybar --reload mybar </dev/null >/var/tmp/polybar-$m.log 2>&1 200>&- &
    disown
  done
) 200>/var/tmp/polybar-launch.lock
