#
# ~/.bashrc
# _____ _____ _____ _        _
#|_   _|  ___|   __| |      / \
#  | | | \\__ \_\__| |___  / _ \
#  |_| |_____|_____|_____|/_| |_\



[[ $- != *i* ]] && return


GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
PS1="\n${GREEN} \u@\h  \w  \$ ${RESET}-> "

export EDITOR=nvim


# ALIASES
alias shutn='shutdown now'
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
alias todo='~/github/todo/todo.py'
alias qute='qutebrowser & q'
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
