set title
set encoding=utf-8
set autoindent
syntax on

" Tabs
set tabstop=8
set softtabstop=0
set shiftwidth=8
set noexpandtab

set number
set scrolloff=3
set sidescroll=3

set ruler
set cc=80
set nowrap
set textwidth=80

" Search as you type, highlight results
set incsearch
set showmatch
set hlsearch

" Don't litter swp files everywhere
set backupdir=~/.cache
set directory=~/.cache

set tags=./tags;

nnoremap <C-J> <C-W><C-H>
nnoremap <C-K> <C-W><C-L>

map <F10> :!clear; pdflatex %<CR>
map <F11> :!ninja -C build<CR>

set splitbelow
set splitright

set list listchars=tab:>\ ,trail:-

" Various file formats
" autocmd FileType c setlocal noet ts=4 sw=4 tw=80
autocmd FileType tex setlocal et ts=2 sw=2
autocmd FileType haskell setlocal ts=8 et sts=4 sw=4 sr
autocmd FileType fortran setlocal ts=8 et sts=4 sw=4 sr

let fortran_free_source=1
"let fortran_have_tabs=1
"let fortran_more_precise=1
"let fortran_do_enddo=1

if exists('+termguicolors')
 let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
 let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
 set termguicolors
endif

colorscheme base16-monokai
