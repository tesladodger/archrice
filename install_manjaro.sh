#!/bin/bash

# Change working directory to repository
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
ln -s ${path}/tex.vim ~/.vim/after/syntax/tex/tex.vim
printf "DONE\n"

printf "%-40s" ".vim/after/syntax/nerdtree.vim"
find ~/.vim/after/syntax/nerdtree.vim -delete >/dev/null 2>&1
ln -s ${path}/nerdtree.vim ~/.vim/after/syntax/nerdtree.vim
printf "DONE\n"

printf "%-40s" ".bash_aliases"
find ~/.bash_aliases -delete >/dev/null 2>&1
ln -s ${path}/Manjaro/.bash_aliases ~/.bash_aliases
printf "DONE\n"

printf "%-40s" ".bashrc"
find ~/.bashrc -delete >/dev/null 2>&1
ln -s ${path}/Manjaro/.bashrc ~/.bashrc
printf "DONE\n"

printf "%-40s" ".Xmodmap"
find ~/.Xmodmap -delete >/dev/null 2>&1
ln -s ${path}/.Xmodmap ~/.Xmodmap
printf "DONE\n"

printf "%-40s" "conky.conf"
find ~/.config/conky/conky.conf -delete >/dev/null 2>&1
ln -s ${path}/Manjaro/conky/conky.conf ~/.config/conky/conky.conf
printf "DONE\n"

printf "%-40s" ".inputrc"
find ~/.inputrc -delete >/dev/null 2>&1
ln -s ${path}/.inputrc ~/.inputrc
printf "DONE\n"
