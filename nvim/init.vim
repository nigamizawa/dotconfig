"*****************************************************************************
" vimrc
"*****************************************************************************

""""" Tag definitions """""
" [Neovim]: settings for neovim

""""" Basic Setting """""

nnoremap <Space> <Nop>
let mapleader = "\<Space>"

""""" Visual Setting """""
syntax enable
set number           "show line number
set relativenumber
set ruler            "display the cursor position in the lower right corner of the Vim window
set cursorline       "highlight cursor line
" set guifont=SF Mono Square          "font setting
set cmdheight=2      "number of screen lines of command-line
set signcolumn=yes   "for git, LSP signs
highlight clear SignColumn

""""" searching and replacement """""
set ignorecase        "ignore case
set smartcase         "if the search pattern contains upper case, Only used when the search pattern is typed
if has('vim')
  set hlsearch   "highlight
  set incsearch
  set wrapscan
endif
set inccommand=split  "[Neovim] show replacing words interactively
nnoremap <silent><Esc><Esc> :nohl<CR>


""""" Tab Setting """""
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab         "use <Space> insted of <Tab>
set smarttab
set smartindent
set shiftround
set list listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%


""""" window """""


""""" keybind """""
map Y y$

" insert mode
inoremap jj <Esc>:w<Cr>

" normal mode
" nnoremap <C-q> :q<Cr>         "<CTRL-q> :q
" nnoremap <C-w> :w<Cr>         "<CTRL-w> + <CTRL-w> :wq
" nnoremap <C-w><C-w> :wq<Cr>   "<CTRL-w> + <CTRL-w> :wq
" nnoremap <C-q><C-q> :q!<Cr>   "<CTRL-q> + <CTRL-q> :q!

" switch(move) curret window
set splitbelow " make the new window appear below the current window
set splitright " make the new window appear on the right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" switch curret buffer
nnoremap <silent><C-p> :bprev<Cr>
nnoremap <silent><C-n> :bnext<Cr>

" switch curret Tab
nnoremap <Tab>p gt
nnoremap <Tab>n gT

" move Tab
nnoremap <Tab>l :+tabmove<Cr>
nnoremap <Tab>h :-tabmove<Cr>

" terminal
tnoremap <Esc> <C-\><C-n>

""""" file processing """""
set confirm    " check unsaved file(s) before apply :q, :qa, :w commands
set hidden     " enable opening new file without saving current file
set autoread   " automatically read changes outside of Vim
set nobackup   " does not make a backup before overwriting
set noswapfile " does not make swap files
set updatetime=100

""""" enable file type detection, loading the plugin files and indent for specific file types """""
filetype plugin indent on


""""" etc """""
set clipboard=unnamedplus
set mouse=a
set scrolloff=3

""""" init vim plugin manager(dein) """""
source ~/.config/nvim/init_dein.vim

