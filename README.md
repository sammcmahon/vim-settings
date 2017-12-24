# vim-settings
A minimal vimrc, set of plugins, with no non-vim dependencies for packages.

## Installation
You must have at least curl and git on your system to build.

Clone the repository:
`$ git clone https://github.com/sammcmahon/vim-settings.git`

Run the build script by using `$ ./build.sh` from the root folder of the
repository. You may have to use `$ chmod +x build.sh` to make the script
executable.

The dotfiles are then installed with the old dotfiles copied and given a ".bak"
suffix.

## Basics
[vim-plug](https://github.com/junegunn/vim-plug) is used as the plugin manager
here. [vim-sensible](https://github.com/tpope/vim-sensible) is used to provide
very basic settings, the vimrc itself only really relates to settings managing
plugins, personal settings, etc.

## List of Plugins
* [Syntastic](https://github.com/vim-syntastic/syntastic): Syntax checker
* [vim-airline](https://github.com/vim-airline/vim-airline): Status/tabline
* [vim-fugitive](https://github.com/tpope/vim-fugitive): Git wrapper
* [vim-polyglot](https://github.com/sheerun/vim-polyglot): Language pack

## License
This repository released under the MIT License, all plugins are released
under their respective licenses.
