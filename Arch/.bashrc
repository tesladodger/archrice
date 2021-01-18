#
# ~/.bashrc
# _____ _____ _____ _        _
#|_   _|  ___|   __| |      / \
#  | | | \\__ \_\__| |___  / _ \
#  |_| |_____|_____|_____|/_| |_\



[[ $- != *i* ]] && return



GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
PS1="\n${GREEN} \u@\h  \w  \$ ${RESET}-> "


# ALIASES
alias shutn='shutdown now'
alias xmm='xmodmap .Xmodmap'
alias ls='ls --color=auto'
alias ll='ls -lah'
alias h='cd ~'
alias b='cd ..'
alias bb='cd ../..'
alias bbb='cd ../../..'
alias firefox='firefox & q'
alias idea='~/Documents/idea-IC-202.6397.94/bin/idea.sh & q'
alias q='exit'
alias c='clear'
alias rm='rm -iv'
alias mv='mv -v'
alias cp='cp -v'
# Git
alias gits='git status'
alias gitdf='git diff'
alias gitc='git commit'
alias gita='git add'
alias gitp='git push'
alias gitpl='git pull'
alias gitcl='git clone'
alias gitco='git checkout'
alias gitgud='git fetch origin && git reset --hard origin/master'

# ls COLORS
LS_COLORS=$LS_COLORS:'ex=0;92:''di=0;94' ;
export LS_COLORS
