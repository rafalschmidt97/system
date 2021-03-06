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
nnoremap <leader>1 :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
let g:netrw_liststyle = 3 "Show directories"
let g:netrw_browse_split = 4 "Previous window"
" let g:netrw_browse_split = 0 "Replace content"
let g:netrw_altv = 1
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_keepdir = 0
set autochdir

" Window
nnoremap <leader><Esc> <C-w>o
nnoremap <leader>w :q<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <Leader>= :vertical resize +10<CR>
nnoremap <Leader>- :vertical resize -10<CR>
nnoremap <Leader>+ :resize +10<CR>
nnoremap <Leader>_ :resize -10<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader><S-t> <C-W>T
nnoremap <leader>] :tabnext<CR>
nnoremap <leader>[ :tabprevious<CR>
nnoremap <leader>vv :vs<CR>
nnoremap <leader>vh :sv<CR>
nnoremap <leader><S-w> <C-w>o

" Keymaps 

" Allow to use tabs
vnoremap <Tab> >
vnoremap <S-Tab> <

" Natural searching
nnoremap <leader><S-f> :%s//g<Left><Left>
nnoremap <leader>f /

" Session
nnoremap <leader>s :mksession!<CR>
nnoremap <leader><S-s> :source Session.vim<CR>

" Plugins
call plug#begin('~/.vim/plugged') " Use plugs as a plugin manager

Plug 'morhetz/gruvbox' " Colors
Plug 'tpope/vim-fugitive' " Git utils
Plug 'vim-airline/vim-airline' " Tab line
" Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code intellisense
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --all' }"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

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
let g:ycm_key_detailed_diagnostics = '<leader>gi'

" Finder
nnoremap <leader>o :Files<CR>
nnoremap <leader><C-o> :tabnew:<CR>:Files<CR>
nnoremap <leader><S-o> :GFiles<CR>

" Git
let g:gitgutter_map_keys = 0
