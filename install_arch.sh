#!/bin/bash

./install_common.sh

# Change working directory to repository
cd "${0%/*}"
path=$(pwd)

printf "%-40s" ".bashrc"
find ~/.bashrc -delete >/dev/null 2>&1
ln -s ${path}/Arch/.bashrc ~/.bashrc
printf "DONE\n"

printf "%-40s" "i3"
find ~/.config/i3/config -delete >/dev/null 2>&1
ln -s ${path}/Arch/i3/config ~/.config/i3/config
printf "DONE\n"

printf "%-40s" "i3status"
find ~/.config/i3status/config -delete >/dev/null 2>&1
ln -s ${path}/Arch/i3status/config ~/.config/i3status/config
printf "DONE\n"

