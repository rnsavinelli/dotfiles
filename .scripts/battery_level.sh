#!/bin/bash
# Outputs battery level

echo "Battery Level: $(< /sys/class/power_supply/BAT0/capacity)%" 
