"""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""
  " Make Vim more useful
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  " let Vundle manage Vundle
  Bundle 'gmarik/vundle'
  Bundle 'bling/vim-airline'
  Bundle 'airblade/vim-gitgutter'
  Bundle 'edkolev/tmuxline.vim'
  Bundle 'christoomey/vim-tmux-navigator'
  " Plugin / Bundle Settings
  filetype plugin indent on
  let g:airline_powerline_fonts = 1
  let g:molokai_original=1
  " Use the OS clipboard by default (on versions compiled with `+clipboard`)
  set clipboard=unnamed
  " Enhance command-line completion
  set wildmenu
  " Ignore these files in wildmenu
  set wildignore+=.git,.svn,.DS_Store,Desktop.ini,.Spotlight-V100,.Trashes,Thumbs.db
  set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.zip,*.tar.gz
  " make cmdline tab completion similiar to bash
  set wildmode=list:longest
  " Allow backspace in insert mode
  set backspace=indent,eol,start
  " Optimize for fast terminal connections
  set ttyfast
  " Add the g flag to search/replace by default
  set gdefault
  " Use UTF-8 without BOM
  set encoding=utf-8 nobomb
  " Change mapleader
  let mapleader=","
  " Don’t add empty newlines at the end of files
  set binary
  set noeol
  " Respect modeline in files
  set modeline
  set modelines=4
  " Enable line numbers
  set number
  " Enable syntax highlighting
  syntax on
  " Centralize backups, swapfiles and undo history
  set backupdir=~/.vim/backups
  set directory=~/.vim/swaps
  if exists("&undodir")
    set undodir=~/.vim/undo
  endif
  " Highlight current line
  set cursorline
  " One more please
  set virtualedit=onemore
  " Make tabs as wide as two spaces
  set tabstop=2
  " Convert tabs to spaces
  set expandtab
  " Set indention
  set shiftwidth=2
  set softtabstop=2
  set smarttab
  " Show “invisible” characters
  set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
  set list
  " increase :cmdline history, undolevels and lines on buffer reload
  set history=1000
  set undolevels=1000
  set undoreload=10000
  " Highlight searches
  set hlsearch
  " Ignore case of searches
  set ignorecase
  " Highlight dynamically as pattern is typed
  set incsearch
  " change buffers, without saving them
  set hidden
  " Always show status line
  set laststatus=2
  " Disable mouse in all modes
  set mouse=
  " Disable error bells
  set noerrorbells
  " Don’t reset cursor to start of line when moving around.
  set nostartofline
  " Show the cursor position
  set ruler
  " Don’t show the intro message when starting Vim
  set shortmess=atI
  " Show the current mode
  set showmode
  " Show the filename in the window titlebar
  set title
  " Split to bottom
  set splitbelow
  " Split to right
  set splitright
  " Show the (partial) command as it’s being typed
  set showcmd
  " Show matching brackets
  set showmatch
  set matchtime=3

"""""""""""""""""""""""""""""""""""""""""""""""""
" Visuals
"""""""""""""""""""""""""""""""""""""""""""""""""
  " Set number of colors
  set t_Co=256
  " Better color support within tmux and screen, ref: http://snk.tuxfamily.org/log/vim-256color-bce.html
  if &term =~ '256color'
    set t_ut=
  endif
  " Set Colorscheme
  set background=dark
  colorscheme molokai

""""""""""""""""""""""""""""""""""""""""""""""""""
" Keybindings
""""""""""""""""""""""""""""""""""""""""""""""""""
  " Ex-mode is shitty
  nnoremap  Q <nop>
  " Open up .vimrc quickly in a new buffer
  nnoremap  <leader>ev :vsp $MYVIMRC<cr>
  " Source .vimrc explitly
  nnoremap  <leader>sv :source $MYVIMRC<cr>
  " disabling arrow keys in normal and insert mode
  nnoremap  <up> <nop>
  nnoremap  <down> <nop>
  nnoremap  <left> <nop>
  nnoremap  <right> <nop>
  inoremap  <up> <nop>
  inoremap  <down> <nop>
  inoremap  <left> <nop>
  inoremap  <right> <nop>