#!/bin/bash

# Change working directory to repository
cd "${0%/*}"

path=$(pwd)

printf "Creating symlinks...\n"
printf ".ideavimrc      "
find ~/.ideavimrc -delete >/dev/null 2>&1
ln -s ${path}/.ideavimrc ~/.ideavimrc
printf "DONE\n"

printf ".vimrc          "
find ~/.vimrc -delete >/dev/null 2>&1
ln -s ${path}/.vimrc ~/.vimrc
printf "DONE\n"

printf ".bash_aliases   "
find ~/.bash_aliases -delete >/dev/null 2>&1
ln -s ${path}/Manjaro/.bash_aliases ~/.bash_aliases
printf "DONE\n"

printf ".bashrc         "
find ~/.bashrc -delete >/dev/null 2>&1
ln -s ${path}/Manjaro/.bashrc ~/.bashrc
printf "DONE\n"

printf ".Xmodmap        "
find ~/.Xmodmap -delete >/dev/null 2>&1
ln -s ${path}/.Xmodmap ~/.Xmodmap
printf "DONE\n"

printf "conky.conf      "
find ~/.config/conky/conky.conf -delete >/dev/null 2>&1
ln -s ${path}/Manjaro/conky/conky.conf ~/.config/conky/conky.conf
printf "DONE\n"

printf ".inputrc        "
find ~/.inputrc -delete >/dev/null 2>&1
ln -s ${path}/.inputrc ~/.inputrc
printf "DONE\n"


