# vim-settings
A minimal vimrc, set of plugins, with no non-vim dependencies.

## Installation
Run the build script to download the plugins by using `$ ./build.sh` from the root
folder of the repository. You may have to use `$ chmod +x build.sh` to make the
script executable.

Afterwards, copy both .vimrc and .vim folder to your home directory for both Linux
and MacOS.

## Basics
[Pathogen](https://github.com/tpope/vim-pathogen) is used as the plugin manager
here. [vim-sensible](https://github.com/tpope/vim-sensible) is used to provide
very basic settings, the vimrc itself only really relates to settings managing
plugins, personal settings, etc.

## List of Plugins
[Ctrl-P](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file finder

[NERDtree](https://github.com/scrooloose/nerdtree): Tree file explorer

[Supertab](https://github.com/ervandew/supertab): Autocompletion

[Syntastic](https://github.com/vim-syntastic/syntastic): Syntax checker

[vim-airline](https://github.com/vim-airline/vim-airline): Status/tabline

[vim-fugitive](https://github.com/tpope/vim-fugitive): Git wrapper
