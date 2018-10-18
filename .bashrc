#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'


RED="\[$(tput setaf 1)\]"
RESET="\[$(tput sgr0)\]"

PS1="${RED}[\u@\h \W]\$ ${RESET}"

# CUSTOM ALIASES
alias please='sudo'
alias matrix='./unimatrix.py'
