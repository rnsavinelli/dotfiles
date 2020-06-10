#!/bin/sh
#
# ~/.xinitrc
#

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

numlockx &
#exec dwm
exec cinnamon-session
exec offload-gpu
