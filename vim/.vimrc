" leader
let mapleader=","       " leader is comma

" colors
set background=dark
colorscheme onedark
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

" nerdtree
" close vim if nerdtree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" shortcut for nerdtree
nmap <leader>ne :NERDTree<cr>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

hi Normal ctermbg=none
hi NonText ctermbg=none
