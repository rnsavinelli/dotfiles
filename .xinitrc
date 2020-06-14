#!/bin/sh
#
# ~/.xinitrc
#

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

slstatus 2>&1 >/dev/null &
exec dwm
#exec cinnamon-session
exec offload-gpu
