set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set autoindent
set number
set mouse=a


" syntax
let c_highlight_all = 1
" let python_highlight_all = 1
syntax on


set t_Co=256

" Delete space in end of line
autocmd BufWritePre *.c normal m`:%s/\s\+$//e ``
" autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" Smart indent after constructions words
autocmd BufRead *.c set smartindent cinwords=if,elseif,else,main,while,do,for

" For comfort
" set t_vb " silent mode
set visualbell  t_vb= " no blink cursor


" backspace comfort ?
set backspace=indent,eol,start whichwrap+=<,>,[,]

" comfort show line
set wrap
set linebreak
set ruler

" pair bracket
inoremap { {<CR><CR>}<Esc>ki<tab>
inoremap ( ()<Esc>ha
inoremap " ""<Esc>ha


" get off *.swp files
set noswapfile

"colorscheme
colorscheme gruvbox
:set background=dark


"Pluggins

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'

call plug#end()

set wildmenu
set ruler


"mappings

map <C-n> :NERDTreeToggle<CR>
vmap <C-c> "+y
imap <C-v> <Esc>"+gp




map <g-t> :tabn<CR>
map <g-T> :tabp<CR>
