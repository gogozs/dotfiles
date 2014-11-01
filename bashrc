#!/bin/sh

TYPE=`uname`;

# General Settings
export CLICOLOR=1

# Platform specific
if [ ${TYPE} = Darwin ]
then
    alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
    alias vi='vim'
elif [ ${TYPE} = Linux ]
then 
    echo 'Linux';
else 
    echo "Unsupported OS - ${TYPE}";
fi
