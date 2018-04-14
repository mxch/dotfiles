" leader
let mapleader=","       " leader is comma

" colors
set background=dark
colorscheme gruvbox
let &t_Co=256
syntax enable

" spaces / tabs
set tabstop=2
set softtabstop=2
set expandtab

" ui
set number
set lazyredraw
set showmatch
set showcmd

" searching
set incsearch  " search as characters are entered
set hlsearch  " highlight matches
nnoremap <Leader><space> :noh<cr><esc> " reset search highlighting

hi Normal ctermbg=none
hi NonText ctermbg=none
