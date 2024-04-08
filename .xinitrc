#!/bin/sh
#
# ~/.xinitrc
#

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

export XDG_SESSION_TYPE=X11
export GDK_BACKEND=x11

slstatus 2>&1 >/dev/null &
exec dwm
