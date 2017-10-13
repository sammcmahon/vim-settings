#!/usr/bin/env bash

VIM=~/.vim
VIMRC=~/.vimrc

# backup old dotfiles
if [ -e "$VIM" ]
then
    cp -rf $VIM $VIM.bak
    rm -rf $VIM
fi

if [ -e "$VIMRC" ]
then
    cp -f $VIMRC $VIMRC.bak
    rm -f $VIMRC
fi

# make the proper folders
mkdir $VIM
mkdir $VIM/autoload
mkdir $VIM/bundle
mkdir $VIM/colors
mkdir $VIM/syntax

# install pathogen
curl -LSo $VIM/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# install colorscheme
curl -LSo $VIM/colors/molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim

# clone the repositories for the plugins
RETURN_DIR=$PWD
cd $VIM/bundle

git clone git://github.com/tpope/vim-sensible.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/ervandew/supertab.git
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
# vim-fugitive specific commands
git clone git://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q

cd $RETURN_DIR

# install .vimrc
cp .vimrc $VIMRC
