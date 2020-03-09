#!/bin/bash
# Outputs battery level
# R. Nicolás Savinelli [23/Sep/2019]

echo "Battery Level: $(< /sys/class/power_supply/BAT0/capacity)%" 
