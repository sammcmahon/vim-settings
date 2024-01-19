# vim-settings
A minimal vimrc, set of plugins, with minimal non-vim dependencies.

## Installation
You must have at least vim 8, curl, and git on your system to build.

Clone the repository:
`$ git clone https://github.com/sammcmahon/vim-settings.git`

Run the build script by using `$ ./build.sh` from the root folder of the
repository. You may have to use `$ chmod +x build.sh` to make the script
executable.

The dotfiles are then installed with the old dotfiles copied and given a ".bak"
suffix.

Once the plugins have been installed by running vim in the background, the
plugin installation status and this readme will open in a split.

## Basics
[vim-plug](https://github.com/junegunn/vim-plug) is used as the plugin manager
here. [vim-sensible](https://github.com/tpope/vim-sensible) is used to provide
very basic settings, the vimrc itself only really relates to settings managing
plugins, personal settings, etc.

## List of Plugins
* [vim-sensible](https://github.com/tpope/vim-sensible): Default vim settings
* [vim-fugitive](https://github.com/tpope/vim-fugitive): Git wrapper
* [vim-airline](https://github.com/vim-airline/vim-airline): Status bar
* [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes): Airline theme pack
* [vim-bufferline](https://github.com/bling/vim-bufferline): Airline plugin
* [vim-polyglot](https://github.com/sheerun/vim-polyglot): Language pack
* [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags): Tagfile generator
* [fzf](https://github.com/junegunn/fzf): Fuzzy finder
* [fzf.vim](https://github.com/junegunn/fzf.vim): fzf vim integration
* [ale](https://github.com/dense-analysis/ale): Syntax checker and LSP client
* [vim-noctu](https://github.com/noahfrederick/vim-noctu): Color theme
* [supertab](https://github.com/ervandew/supertab): Tab for insert mode completions

## Keybindings
By default, the \<Leader\> key in vim is the backslash. The full listing of keybindings in
the vimrc:

|Binding    |Command                    |Comment                                                |
|-----------|---------------------------|-------------------------------------------------------|
|\<Leader\>c|:lclose<CR>                |Closes loclist (where syntax error messages show up)   |
|\<Leader\>o|:lopen<CR>                 |Opens loclist                                          |
|\<Leader\>f|:Files<CR>                 |fzf window to open a new file                          |
|\<Leader\>b|:Buffers<CR>               |fzf window to go to open buffer                        |
|\<Leader\>n|:bn<CR>                    |Switch to next buffer                                  |
|\<Leader\>p|:bp<CR>                    |Switch to previous buffer                              |

## License
This repository is released under the MIT License, all plugins are released
under their respective licenses.
