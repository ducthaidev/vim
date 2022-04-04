#!/bin/bash

# install vim-plug
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# insall lua package
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
