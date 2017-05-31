# vim-settings
A minimal vimrc, set of plugins, with no non-vim dependencies for packages.

## Installation
You must have at least curl and git on your system to build.

Run the build script by using `$ ./build.sh` from the root folder of the
repository. You may have to use `$ chmod +x build.sh` to make the script
executable.

The dotfiles are then installed with the old dotfiles copied and given a ".bak"
suffix.

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

## License
This repository released under the MIT License, all plugins are released
under their respective licenses.
