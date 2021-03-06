" Escape key is too far
inoremap jk <Esc>
inoremap jj <Esc>

" Resize windows with Alt + hjkl
nnoremap <M-j>	:resize -2<CR>
nnoremap <M-k>	:resize +2<CR>
nnoremap <M-h>	:vertical resize -2<CR>
nnoremap <M-l>	:vertical resize +2<CR>

" Old habits die hard
nnoremap <C-s> :w<CR>

" Better tabs
vnoremap < <gv
vnoremap > >gv
