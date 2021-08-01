let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

map <F1> :call NERDTreeToggleAndFind()<CR>
map <F2> :NERDTreeToggle<CR>

" Clase the tab if NERDTree is the only window remaining
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

function! NERDTreeToggleAndFind()
	if (exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1)
		execute ':NERDTreeClose'
	else
		execute ':NERDTreeFind'
	endif
endfunction
