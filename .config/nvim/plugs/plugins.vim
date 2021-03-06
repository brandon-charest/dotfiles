" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Dracula Theme
    Plug 'dracula/vim', {'as': 'dracula'}   
    " One Dark Theme
    Plug 'joshdick/onedark.vim'
    " Airline bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Dev Icons
    Plug 'ryanoasis/vim-devicons'
    " Fuzzy Finder
    Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'} 
    Plug 'junegunn/fzf.vim'
    " Easier comments
    Plug 'tpope/vim-commentary'    
call plug#end()
