" set up pathogen and vim-sensible
execute pathogen#infect()
runtime! plugin/sensible.vim

" kill trailing whitespace
autocmd BufWritePre <buffer> %s/\s\+$//e

syntax on
filetype plugin indent on

" vim-airline settings
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1

" syntastic settings
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

" supertab settings
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

" NERDTree settings
map <Leader>n :NERDTreeToggle<CR>

" ctrl-p settings
map <silent> <Leader>p :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

set number
set tw=80
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

let g:molokai_original = 1
colo molokai
