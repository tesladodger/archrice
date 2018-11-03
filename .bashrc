#
# ~/.bashrc
# _____ _____ _____ _        _
#|_   _|  ___|   __| |      / \
#  | | | \\__ \_\__| |___  / _ \
#  |_| |_____|_____|_____|/_| |_\



[[ $- != *i* ]] && return


GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

# BACK1="\e[48;5;237m\["
# DIAMOND1="\e[38;5;237m\[\e[38;5;255m\["
# BACK2="\e[48;5;239m\["
# DIAMOND2="\e[38;5;239m\[\e[38;5;255m\["
# BACK3="\e[48;5;241m\["
# DIAMOND3="\e[38;5;241m\[\e[38;5;255m\["
GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
PS1="\n${BACK1}${GREEN} \u@\h ${BACK2}${DIAMOND1} \w ${BACK3}${DIAMOND2} \$ ${RESET}${DIAMOND3}${RESET}-> "

export EDITOR=nvim


# ALIASES
alias l='i3lock -f -i ~/Pictures/windowsscreen.png -p default'
alias ls='ls --color=auto'
alias ll='ls -lah'
alias u='cd ~'
alias b='cd ..'
alias b2='cd ../..'
alias b3='cd ../../..'
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
alias gitpl='git pull'
alias gitcl='git clone'
alias gitco='git checkout'

# ls COLORS
LS_COLORS=$LS_COLORS:'ex=0;92:''di=0;94' ;
export LS_COLORS
