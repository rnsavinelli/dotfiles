#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts/
export EDITOR=/usr/bin/vim
export TERMINAL=/usr/bin/gnome-terminal
export BROWSER=firefox
export ANDROID_SDK_ROOT=$HOME/Android/Sdk/

#if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
#	pgrep cinnamon-session || startx
#fi

if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
	pgrep gnome-session || XDG_SESSION_TYPE=x11 GDK_BACKEND=x11 exec startx
	#pgrep dwm || exec startx
fi

