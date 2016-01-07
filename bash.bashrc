
function gitRepository() {
repo=`basename \`git rev-parse --show-toplevel\``
echo "$repo"
}

function gitBranch() {
branch=`git rev-parse --abbrev-ref HEAD`
echo "$branch"
}


function change() {
if git rev-parse --is-inside-work-tree > /dev/null 2>&1
then
export PS1="\033[38;5;033m\]┌──\033[39m\]\[$(tput bold)\][\033[38;5;209m\]\@\033[39m\]]\[$(tput sgr0)\] \033[38;5;033m\]\u\033[39m\]<\033[38;5;033m\]\h\033[39m\]> | \033[38;5;099m\]`gitRepository`\033[39m\] \[$(tput bold)\]\033[38;5;203m\](`gitBranch`)\033[39m\]\[$(tput sgr0)\] | \033[38;5;209m\]\w\033[39m\]
\033[38;5;033m\]└──▶\033[39m\] \[$(tput sgr0)\]"
else
export PS1="\033[38;5;033m\]┌──\033[39m\]\[$(tput bold)\][\033[38;5;209m\]\@\033[39m\]]\[$(tput sgr0)\] \033[38;5;033m\]\u\033[39m\]<\033[38;5;033m\]\h\033[39m\]> | \033[38;5;209m\]\w\033[39m\]
\033[38;5;033m\]└──▶\033[39m\] \[$(tput sgr0)\]"
fi
}

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
alias lnx='ssh wlodarek@hotellnx119.torolab.ibm.com'
alias aix='ssh wlodarek@hotelaix13.torolab.ibm.com'

export PROMPT_COMMAND=change

alias ims1007='ssh db2inst1@ims1007.torolab.ibm.com'
