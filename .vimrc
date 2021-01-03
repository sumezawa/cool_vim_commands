syntax on

set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set backspace=indent,eol,start
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'                              " colour / background
Plug 'tpope/vim-fugitive'                           " git, in vim 
Plug 'vim-airline/vim-airline'                      " show git branch
Plug 'jremmen/vim-ripgrep'                          " rip-grep, in vim
Plug 'vim-utils/vim-man'                            " man, in vim
Plug 'https://github.com/ycm-core/YouCompleteMe'    " autocomplete: C++, Java
Plug 'mbbill/undotree'                              " history of undos
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }  " fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-dispatch'                           " make, in vim
Plug 'sheerun/vim-polyglot'                         " autocomplete: for everything else?

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root ='true'
endif

let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25

let g:fzf_layout = {'window': {'width':0.8, 'height':0.8}}
let $FZF_DEFAULT_OPTS='--reverse'

nnoremap ,, <esc>
" remap Esc in normal mode to ,,, since its closer
inoremap ,, <esc>
" remap for insert mode
vnoremap ,, <esc>
" remap for visual and select mode
xnoremap ,, <esc> 
" remap for visual mode
snoremap ,, <esc>
" remap for select mode
cnoremap ,, <C-c>
" remap for command mode
onoremap ,, <esc>
" remap for operator pending mode


" 
nnoremap <leader>u :UndotreeToggle<CR>
" show undo tree
nnoremap <leader>pv <C-W>v<bar> :Ex <bar> :vertical resize 30<CR>
" open netrw in a new, resized window
nnoremap <leader>ps :Rg<SPACE>
" projec search, open rip-grep

" YCM 

nnoremap <silent> <leader>yg :YcmCompleter GoTo<CR>
" go to definition, and back, C++, Java
nnoremap <silent> <leader>yf :YcmCompleter FixIt<CR>
" fix it, C++, Java

" GIT FUGITIVE

" u can also tab complete these commands
" :G for git status
" type 's' in the status window to stage the changes, 'u' to unstage
" :Gcommit for git commit
" :Gpush for git push
" Ctrl-w Ctrl-O for yeeting all the git windows (merge, commits, statuses)

" merging from left and right files (since merges are binary operations
nnoremap <leader>gj :diffget //3<CR>
" merge from right side
nnoremap <leader>gf :diffget //2<CR>
" merge from left side

nnoremap <silent> <leader>p :GFiles<CR>
" go to any file in the git repo, with any keywords

nnoremap <leader>gs :G<CR>
" git status 
nnoremap <leader>gc :Git checkout<CR>
" git checkout


" remapped window movement
nnoremap <leader>v <C-W>v
" clone this window, vertical
nnoremap <leader>h <C-W><C-H>
" go left
nnoremap <leader>j <C-W><C-J>
" go down
nnoremap <leader>k <C-W><C-K> 
" go up
nnoremap <leader>l <C-W><C-L>   
" go right
nnoremap <leader>r <C-W>R
" swap windows
nnoremap <leader>o <C-W>O
" close all windows, except this one

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
