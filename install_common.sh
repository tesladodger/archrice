#!/bin/bash

# change working directory to this repo
cd "${0%/*}"
path=$(pwd)

printf "Creating symlinks...\n"

printf "%-40s" ".ideavimrc"
find ~/.ideavimrc -delete >/dev/null 2>&1
ln -s ${path}/.ideavimrc ~/.ideavimrc
printf "DONE\n"

printf "%-40s" ".vimrc"
find ~/.vimrc -delete >/dev/null 2>&1
ln -s ${path}/.vimrc ~/.vimrc
printf "DONE\n"

printf "%-40s" ".vim/after/syntax/tex/tex.vim"
find ~/.vim/after/syntax/tex/tex.vim -delete >/dev/null 2>&1
mkdir -p ~/.vim/after/syntax/tex
ln -s ${path}/tex.vim ~/.vim/after/syntax/tex/tex.vim
printf "%40s\n" "DONE"

printf "%-40s" ".vim/after/syntax/nerdtree.vim"
find ~/.vim/after/syntax/nerdtree.vim -delete >/dev/null 2>&1
ln -s ${path}/nerdtree.vim ~/.vim/after/syntax/nerdtree.vim
printf "%40s\n" "DONE"

printf "%-40s" ".Xmodmap"
find ~/.Xmodmap -delete >/dev/null 2>&1
ln -s ${path}/.Xmodmap ~/.Xmodmap
printf "DONE\n"

printf "%-40s" ".inputrc"
find ~/.inputrc -delete >/dev/null 2>&1
ln -s ${path}/.inputrc ~/.inputrc
printf "DONE\n"

printf "%-40s" "vim templates"
ln -s ${path}/vim_templates ~/.vim/templates
printf "DONE\n"
