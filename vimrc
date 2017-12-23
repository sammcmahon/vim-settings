" set up vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'tomasr/molokai'

" initialize plugin system
call plug#end()

if empty(glob('~/.vim/plugged'))
  PlugInstall
endif

" vim-airline settings
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1

" syntastic settings
map <Leader>s :SyntasticToggleMode<CR>
map <Leader>l :lclose<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

" supertab settings
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = 'context'

" NERDTree settings
map <Leader>nt :NERDTreeToggle<CR>

set number
set tw=80
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab smarttab

colo molokai

syntax on
filetype plugin indent on

" kill trailing whitespace
autocmd BufWritePre <buffer> %s/\s\+$//e

" mappings for switching buffers
map <Leader>n :bn<CR>
map <Leader>p :bp<CR>

" with great thanks to robgough's unamed co-worker
map <Left> :echo 'you caveman'<CR>
map <Right> :echo 'insert insult'<CR>
map <Up> :echo 'why'<CR>
map <Down> :echo 'use hjkl like a civilized person'<CR>

