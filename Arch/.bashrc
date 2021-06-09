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

# ex - archive extractor
ex () {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)   tar xjf $1   ;;
            *.tar.gz)    tar xzf $1   ;;
            *.bz2)       bunzip2 $1   ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1    ;;
            *.tar)       tar xf $1    ;;
            *.tbz2)      tar xjf $1   ;;
            *.tgz)       tar xzf $1   ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1;;
            *.7z)        7z x $1      ;;
            *)           echo "'$1' cannot be extracted via ex()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

