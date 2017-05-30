#!/usr/bin/env bash

# all plugins are installed in .vim/bundle
cd .vim
mkdir bundle
mkdir syntax
cd bundle

# clone the repositories for the plugins
git clone git://github.com/tpope/vim-sensible.git
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/ervandew/supertab.git
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/vim-airline/vim-airline.git
# vim-fugitive specific commands
git clone git://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q

# return to root of the repository
cd ../..
