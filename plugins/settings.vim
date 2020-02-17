" Disable vim distribution plugins
let g:loaded_getscript = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_gzip = 1
let g:loaded_logiPat = 1
let g:loaded_matchit = 1
let g:loaded_matchparen = 1
let g:netrw_nogx = 1
let g:loaded_rrhelper = 1
let g:loaded_shada_plugin = 1
let g:loaded_tar = 1
let g:loaded_tarPlugin = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_2html_plugin = 1
let g:loaded_vimball = 1
let g:loaded_vimballPlugin = 1
let g:loaded_zip = 1
let g:loaded_zipPlugin = 1


" For all the plugin settings

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme = 'wombat'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#coc#enabled = 1
function! ArilineInit()
  let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
  let g:airline_section_b = airline#section#create_left(['ffenc', 'hunks', '%F'])
  " let g:airline_section_c = airline#section#create(['filetype'])
  let g:airline_section_x = airline#section#create(['%P'])
  let g:airline_section_y = airline#section#create(['%B'])
  let g:airline_section_z = airline#section#create_right(['%l', '%c'])
endfunction
" vim-airline

" vim-hybrid
set background=dark
colorscheme hybrid
" vim-hybrid

" accelerated-jk
nmap <silent>j <Plug>(accelerated_jk_gj)
nmap <silent>k <Plug>(accelerated_jk_gk)
" accelerated_jk


" vim-terraform
autocmd BufReadPre *.tf packadd vim-terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1
" vim-terraform

"  vim-jinja2-syntax 
" autocmd BufReadPre *.j2 packadd vim-jinja2-syntax

" ansible-vim
autocmd BufReadPre *.yaml,*.yml,*.j2 packadd ansible-vim
let g:ansible_unindent_after_newline = 1
let g:ansible_attribute_highlight = "ob"
" ansible-vim

" incsearch-fuzzy
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)
" incsearch-fuzzy

" ctrlp
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
"   \ 'file': '\.so$\|\.dat$|\.DS_Store$'
"   \ }
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" ctrlp

" simple fzf
nnoremap <c-p> :call fzf#Open()<cr>

" rainbow
let g:rainbow_active = 1
