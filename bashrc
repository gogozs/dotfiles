#!/bin/sh

TYPE=`uname`;

# General Settings
export CLICOLOR=1
export TERM=xterm-256color # fix screen problem

# Platform specific
if [ ${TYPE} = Darwin ]
then
    alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
    alias vi='vim'
elif [ ${TYPE} = Linux ]
then 
    alias vi='vim'
else 
    echo "Unsupported OS - ${TYPE}";
fi
