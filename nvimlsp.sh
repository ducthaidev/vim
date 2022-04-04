#!/bin/bash

# insall lua PACKER package manager
#git clone --depth 1 https://github.com/wbthomason/packer.nvim\
# ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# if nvim directory existing
if [ -d /home/$USER/.config/nvim ]
then
    rm -rf /home/$USER/.config/nvim
fi

mkdir -p /home/$USER/.config/nvim/
mkdir -p /home/$USER/.config/nvim/lua

cp ./init.lua /home/$USER/.config/nvim/
cp -r ./lua/* /home/$USER/.config/nvim/lua
