#
# ~/.bashrc
# _____ _____ _____ _        _
#|_   _|  ___|   __| |      / \
#  | | | \\__ \_\__| |___  / _ \
#  |_| |_____|_____|_____|/_| |_\



[[ $- != *i* ]] && return


RED="\[$(tput setaf 1)\]"
RESET="\[$(tput sgr0)\]"
PS1="${RED}[\u@\h \w]\$ ${RESET}\n-> "


export EDITOR=nvim


# ALIASES
alias l='i3lock -f -i ~/Pictures/windowsscreen.png -p win'
alias ls='ls --color=auto'
alias ll='ls -lah'
alias u='cd ~'
alias b='cd ..'
alias b2='cd ../..'
alias firefox='firefox & q'
alias matrix='./unimatrix.py'
alias vim='nvim'
alias q='exit'
alias c='clear'
alias rm='rm -iv'
alias mv='mv -v'
alias cp='cp -v'
# Git
alias gits='git status'
alias gitc='git commit'
alias gita='git add'
alias gitp='git push'
alias gcl='git clone'
