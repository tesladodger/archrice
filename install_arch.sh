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

printf ".bashrc         "
find ~/.bashrc -delete >/dev/null 2>&1
ln -s ${path}/Arch/.bashrc ~/.bashrc
printf "DONE\n"

printf ".Xmodmap        "
find ~/.Xmodmap -delete >/dev/null 2>&1
ln -s ${path}/.Xmodmap ~/.Xmodmap
printf "DONE\n"

printf ".inputrc        "
find ~/.inputrc -delete >/dev/null 2>&1
ln -s ${path}/.inputrc ~/.inputrc
printf "DONE\n"

printf "i3              "
find ~/.config/i3/config -delete >/dev/null 2>&1
ln -s ${path}/Arch/i3/config ~/.config/i3/config
printf "DONE\n"

printf "i3status        "
find ~/.config/i3status/config -delete >/dev/null 2>&1
ln -s ${path}/Arch/i3status/config ~/.config/i3status/config
printf "DONE\n"

