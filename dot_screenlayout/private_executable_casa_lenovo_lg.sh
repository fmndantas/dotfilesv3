#!/bin/sh
xrandr --output eDP-1 --mode 1920x1080 --pos 2560x0 --rotate normal --output DP-1 --off --output HDMI-1 --primary --mode 2560x1080 --pos 0x0 --rotate normal --output DP-2 --off --output DP-3 --off

i3-msg 'workspace 4; move workspace to output nonprimary' > /dev/null 2>&1
i3-msg 'workspace 3; move workspace to output primary' > /dev/null 2>&1
i3-msg 'workspace 2; move workspace to output nonprimary' > /dev/null 2>&1
i3-msg 'workspace 1; move workspace to output primary' > /dev/null 2>&1

bash ~/.config/i3/set-wallpaper.sh
