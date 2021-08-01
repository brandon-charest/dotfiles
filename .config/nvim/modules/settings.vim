" Set leader key
let g:mapleader = "\<Space>"

syntax enable     					" Enable syntax highlight
set number									" Show line numbers
set mouse=a									" Enable mouse usage
set hidden									" Allow multiple buffers
set updatetime=300					" Faster completion
set timeoutlen=500					" Default is 1000
set t_Co=256								" Support 256 colors
set ruler										" Show cursor position at all times
set nowrap									" Do not wrap text
set encoding=utf-8					" Encoding displayed
set tabstop=2								" 2 spaces for tabs
set shiftwidth=2						" Change number of space characteres inserted for indentation
set smartindent							" Makes better indents
set autoindent							" Better auto indent
set clipboard=unnamedplus		" Allow copy paste to and from vim
set cmdheight=2							" More space in command window
set laststatus=2						" Always display status
set splitbelow							" Horizontal splits will always be below
set splitright							" Vertical splits will always be to the right
set noshowmode							" Using lightline dont need deafult line
set nobackup								" Recommended by Coc
set nowritebackup						" Recommended by Coc
set shortmess+=c						" Dont five /in-completion-menu/ messages
set signcolumn=yes					" Always show signcolumns
set noswapfile							" Do not use swap files
set splitbelow							" Split horizontal window to below
set splitright							" Split vertical window to right
