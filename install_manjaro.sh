#!/bin/bash

./install_common.sh

# Change working directory to repository
cd "${0%/*}"
path=$(pwd)

printf "%-40s" ".bash_aliases"
find ~/.bash_aliases -delete >/dev/null 2>&1
ln -s ${path}/Manjaro/.bash_aliases ~/.bash_aliases
printf "DONE\n"

printf "%-40s" ".bashrc"
find ~/.bashrc -delete >/dev/null 2>&1
ln -s ${path}/Manjaro/.bashrc ~/.bashrc
printf "DONE\n"

printf "%-40s" "conky.conf"
find ~/.config/conky/conky.conf -delete >/dev/null 2>&1
ln -s ${path}/Manjaro/conky/conky.conf ~/.config/conky/conky.conf
printf "DONE\n"

