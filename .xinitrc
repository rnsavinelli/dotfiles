#!/bin/sh
#
# ~/.xinitrc
#

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

#slstatus 2>&1 >/dev/null &
#exec dwm

export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
exec gnome-session

exec offload-gpu
