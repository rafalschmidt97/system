syntax on " Code syntax

" Intention
set expandtab " Change tabs to spaces
set shiftwidth=2 softtabstop=2 tabstop=2 " To spaces for tabs
set smartindent " Try to indent

" Appearance
set noerrorbells " Turn off error sound
set number relativenumber " Show relative line number
set colorcolumn=120
setlocal spell spelllang=en_us " Use English language
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Search
set smartcase " Change case for searching automatically
set incsearch " Show partial matches

" Text alignment
set nowrap

" Files
set noswapfile
set nobackup
set undodir=~/.vim/undodir " Create undo directory FIRST!
set undofile

" Other
set timeoutlen=1000 ttimeoutlen=0 " Fix bug a with waiting for commands
set hidden " Hide files instead of closing them

" Shell
set shell=/usr/bin/zsh

" Tree
let g:netrw_liststyle=3
let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Keymaps 

" Allow to use tabs
vnoremap <Tab> >
vnoremap <S-Tab> <

" Hard mode
nnoremap <buffer> <Left> <Esc>
nnoremap <buffer> <Right> <Esc>
nnoremap <buffer> <Up> <Esc>
nnoremap <buffer> <Down> <Esc>
nnoremap <buffer> <PageUp> <Esc>
nnoremap <buffer> <PageDown> <Esc>

inoremap <buffer> <Left> <Esc>
inoremap <buffer> <Right> <Esc>
inoremap <buffer> <Up> <Esc>
inoremap <buffer> <Down> <Esc>
inoremap <buffer> <PageUp> <Esc>
inoremap <buffer> <PageDown> <Esc>

vnoremap <buffer> <Left> <Esc>
vnoremap <buffer> <Right> <Esc>
vnoremap <buffer> <Up> <Esc>
vnoremap <buffer> <Down> <Esc>
vnoremap <buffer> <PageUp> <Esc>
vnoremap <buffer> <PageDown> <Esc>
