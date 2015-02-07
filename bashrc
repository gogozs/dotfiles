#!/bin/sh

TYPE=`uname`;

# General Settings
export CLICOLOR=1
#export TERM=xterm-256color # fix SCREEN(1) problem

# Base16 Shell
#BASE16_SHELL="$HOME/.config/base16-shell/base16-eighties.dark.sh"
#[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL

# Platform specific
if [ ${TYPE} = Darwin ]
then
    alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
    alias vi='vim'
    export PATH=/usr/local/sbin:$PATH
elif [ ${TYPE} = Linux ]
then 
    alias vi='vim'
    unset SSH_ASKPASS # Prevent gnome-ssh-askpass dialogue
else 
    echo "Unsupported OS - ${TYPE}";
fi
