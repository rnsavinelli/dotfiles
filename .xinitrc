#!/bin/sh
#
# ~/.xinitrc
#

#export XDG_SESSION_TYPE=x11
#export GDK_BACKEND=x11
exec cinnamon-session

exec ./.scripts/gpu_offloading.sh
