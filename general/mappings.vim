let mapleader=";"
inoremap <leader>w <Esc>:w<cr>
nnoremap <leader>x :w\|bd<cr>
" ,e
inoremap jj <Esc>
" Capital letter
nnoremap <C-S-U> gUiw
inoremap <C-S-U> <Esc>gUiwgi

" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" use :Q exit
map :Q :q
map <M-q> :q<Cr>

" switch between buffers
nnoremap <leader>l :bp<cr>
nnoremap <leader>k :bn<cr>

" tab complete
"set tags=tags
"set autochdir

"function! CleverTab()
"  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"    return "\<Tab>"
"  elseif strpart( getline('.'), col('.')-2, 2) =~ '\s$'
"    return "\<Tab>"
"  else
"    return "\<C-N>"
"  endif
"endfunction
"inoremap <Tab> <C-R>=CleverTab()<CR>
