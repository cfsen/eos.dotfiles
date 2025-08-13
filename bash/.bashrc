#
# ~/.bashrc
#

# If not running interactively, don't do anything (e.g., for scripts)
[[ $- != *i* ]] && return

export EDITOR="nvim"

# IME
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export INPUT_METHOD=fcitx

PS1='\[\033[35m\][\u@\h \W]\$ \[\033[0m\]'

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias grep='grep --color=auto'

img () {
	kitty icat "$1"
}


# mpd client
if [ -f ~/.cargo/bin/inori ]; then
	alias inori='~/.cargo/bin/inori'
else
	alias inori='echo "Error: inori not found."'
fi

#
# private config
#

if [ -f ~/.bashrc_private ]; then
	. ~/.bashrc_private
else
	echo "Warning: ~/.bashrc_private not found."
fi

# 
# miniconda
#

if [ -f /opt/miniconda3/etc/profile.d/conda.sh ]; then 
	. /opt/miniconda3/etc/profile.d/conda.sh
else
	echo "Warning: /opt/miniconda3/ not found."
fi
