#!/usr/bin/env bash
set -u

VIM=~/.vim
VIMRC=~/.vimrc

# backup old dotfiles
if [ -e "$VIM" ]
then
    echo "Backing up old .vim folder"
    cp -rf $VIM $VIM.bak
    rm -rf $VIM
fi

if [ -e "$VIMRC" ]
then
    echo "Backing up old .vimrc file"
    mv -f $VIMRC $VIMRC.bak
fi

# install vimrc
cp vimrc $VIMRC

# install vim-plug
echo "Installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# run vim to install plugins
echo "Installing plugins..."
vim -c qa! &> /dev/null
