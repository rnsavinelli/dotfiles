#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts/
export EDITOR="vim"
export TERMINAL="gnome-terminal"
export BROWSER="firefox"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep cinnamon-session || startx
fi
