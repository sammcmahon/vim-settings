set nocompatible

" set up vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible' 
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.vim/fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'rhysd/vim-grammarous'
Plug 'agude/vim-eldar'
Plug 'fatih/vim-go'

" initialize plugin system
call plug#end()

" vim-airline settings
let g:airline_theme='monochrome'

" vim-gutentags settings
let g:gutentags_dont_load = 1
set statusline+=%{gutentags#statusline()}

" loclist settings
map <Leader>c :lclose<CR>
map <Leader>o :lopen<CR>

" fzf settings
nmap <Leader>f :Files<CR>
nmap <Leader>b :Buffers<CR>

" customize fzf colors to match color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

set number
set tw=80
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab smarttab

syntax on
filetype plugin indent on

" kill trailing whitespace
autocmd FileType c,make,markdown autocmd BufWritePre <buffer> %s/\s\+$//e

" mappings for switching buffers
map <Leader>n :bn<CR>
map <Leader>p :bp<CR>

" with great thanks to robgough's unamed co-worker
map <Left> :echo 'you caveman'<CR>
map <Right> :echo 'insert insult'<CR>
map <Up> :echo 'why'<CR>
map <Down> :echo 'use hjkl like a civilized person'<CR>

augroup vimrc
  autocmd!
  autocmd ColorScheme * 
  \ highlight Normal ctermbg=black 
  \ | highlight EndOfBuffer ctermfg=black ctermbg=black 
  \ | highlight SignColumn ctermbg=black
  \ | highlight StatusLine ctermfg=black ctermbg=black
  \ | highlight StatusLineNC ctermfg=black ctermbg=black
augroup END

set t_Co=256
silent! colo eldar
set bg=dark

