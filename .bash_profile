#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts/
export EDITOR=/usr/bin/vim
export TERMINAL="/usr/local/st -t "Simple Terminal""
export BROWSER=firefox

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep cinnamon-session || startx
fi
