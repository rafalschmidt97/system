syntax on " Code syntax
let mapleader = " " " Set leader key

" Intention
set expandtab " Change tabs to spaces
set shiftwidth=2 softtabstop=2 tabstop=2 " To spaces for tabs
set smartindent " Try to indent

" Appearance
set noerrorbells " Turn off error sound
set number relativenumber " Show relative line number
set colorcolumn=120
setlocal spell spelllang=en_us " Use English language
set scrolloff=8 " Create offset while scrolling on the top

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
set shell=/bin/zsh

" Tree
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Window
nnoremap <leader>t :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <Leader>= :vertical resize +10<CR>
nnoremap <Leader>- :vertical resize -10<CR>
nnoremap <Leader>+ :resize +10<CR>
nnoremap <Leader>_ :resize -10<CR>

" Keymaps 

" Allow to use tabs
vnoremap <Tab> >
vnoremap <S-Tab> <

" Plugins
call plug#begin('~/.vim/plugged') " Use plugs as a plugin manager

Plug 'morhetz/gruvbox' " Colors
Plug 'tpope/vim-fugitive' " Git utils
Plug 'vim-airline/vim-airline' " Tab line
" Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code intellisense
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --all' }"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Color schema
colorscheme gruvbox
set background=dark
set termguicolors " Fix colors in terminal

" Code intellisense

" 1. COC
" nmap <leader>gd <Plug>(coc-definition)
" nmap <leader>gy <Plug>(coc-type-definition)
" nmap <leader>gi <Plug>(coc-implementation)
" nmap <leader>gr <Plug>(coc-references)
" nmap <leader>rr <Plug>(coc-rename)
" nmap <leader>g[ <Plug>(coc-diagnostic-prev)
" nmap <leader>g] <Plug>(coc-diagnostic-next)
" nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
" nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
" nnoremap <leader>cr :CocRestartk
" 
" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 
" inoremap <silent><expr> <TAB>
"             \ pumvisible() ? "\<C-n>" :
"             \ <SID>check_back_space() ? "\<TAB>" :
"             \ coc#refresh()
" 
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" inoremap <silent><expr> <C-space> coc#refresh()

"2. YouCompleteMe
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

" Finder
nnoremap <leader>ff :GFiles<CR>
nnoremap <leader>fz :Files<CR>
