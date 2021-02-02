let mapleader=";"
let g:maplocalleader=','
inoremap <leader>w <Esc>:w<cr>
nnoremap <leader>x :w\|bd<cr>
" ,e
inoremap jj <Esc>
inoremap kkk <Esc>
inoremap hhh <Esc>
inoremap llll <Esc>
" Capital letter
nnoremap <C-S-U> gUiw
inoremap <C-S-U> <Esc>gUiwgi

" use accelerate-jk
vnoremap j gj
vnoremap k gk

" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" use :Q exit
map :Q :q
map <M-q> :q<Cr>
nnoremap q :q<Cr>


" switch between buffers
nnoremap <leader>l :bp<cr>
nnoremap <leader>k :bn<cr>

" use ctrl+s to save
nnoremap <C-s> :<C-u>write<CR>

" double leader toggle visual
nmap <Leader><Leader> V

" Duplicate paragraph
nnoremap <Leader>cp yap<S-}>p

" switch between tabs
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt
map <leader>t :tabnew<CR>

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
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap <C-a> <left>
inoremap <C-d> <right>
" inoremap <C-w> <up>
" inoremap <C-s> <down>
