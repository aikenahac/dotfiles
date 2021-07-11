#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q start -c "$HOME"/.config/polybar/config.ini &
polybar -q spotify -c "$HOME"/.config/polybar/config.ini &
polybar -q info -c "$HOME"/.config/polybar/config.ini &
polybar -q date-time -c "$HOME"/.config/polybar/config.ini &