#!/bin/bash

echo "alias vim='~/.config/nvim/nvim.appimage'" > ~/.bashrc
cd ~/.config/nvim/
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage --output nvim.appimage
chmod u+x nvim.appimage
