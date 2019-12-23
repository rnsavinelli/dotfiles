#!/bin/bash
# Outputs battery level

echo "Battery Level: $(upower -i $(upower -e | grep BAT) | grep -E percentage| grep -P -o '[0-9]+(?=%)')%"
