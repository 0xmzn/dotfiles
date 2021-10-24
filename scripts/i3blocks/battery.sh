#!/bin/bash

STATUS=$(cat /sys/class/power_supply/BAT0/status | cut -c1-3)
CAP=$(cat /sys/class/power_supply/BAT0/capacity) 

echo "🔋 $CAP% $STATUS"
