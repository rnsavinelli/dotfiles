#!/bin/sh
#
# ~/.xinitrc
#

exec cinnamon-session

exec ./.scripts/gpu_offloading.sh
