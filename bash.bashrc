# Cutomized terminal color
# Folder located in etc/

# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# /etc/bash.bashrc: executed by bash(1) for interactive shells.

# System-wide bashrc file

# Check that we haven't already been sourced.
([[ -z ${CYG_SYS_BASHRC} ]] && CYG_SYS_BASHRC="1") || return

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Set a default prompt of: user@host, MSYSTEM variable, and current_directory
#PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[35m\]$MSYSTEM\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\n\$ '

# Uncomment to use the terminal colours set in DIR_COLORS
# eval "$(dircolors -b /etc/DIR_COLORS)"

# ls with hidden files
alias la='ls -a --color=auto'
# ls with times, owner, ...
alias ll='ls -l --color=auto'
# ls with color
alias ls='ls --color=auto'

# grep with color
alias grep='grep --color=auto'

# go up a dir
alias ..='cd ..'

# go up multiple dirs
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# clear
alias c='clear'

# start calc with math support
alias bc='bc -l'

# create parent directories if needed
alias mkdir='mkdir -pv'

# resume file downloading
alias wget='wget -c'

# size in GB
alias df='df -H'

# ssh into hotel machines quickly
alias ims1007='ssh db2inst1@ims1007.torolab.ibm.com'

export PS1="\033[38;5;033m\]$\033[39m\]\[$(tput bold)\][\033[38;5;209m\]\@\033[39m\]\[$(tput sgr0)\]][\033[38;5;033m\]\u\033[39m\]@\033[38;5;033m\]\h\033[39m\]] \033[38;5;119m\]\w\033[39m\]
\033[38;5;033m\]$\033[39m\] \[$(tput sgr0)\]"