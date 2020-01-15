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

" Specify a directory for plugins
let g:VimPack_Auto_Install = 1
let g:VimPack_Auto_update = 1
call pack#load()
PlugStart 'vim-airline/vim-airline'
PlugStart 'vim-airline/vim-airline-themes'
PlugStart 'w0ng/vim-hybrid'
PlugStart 'itchyny/vim-cursorword'
PlugStart 'terryma/vim-multiple-cursors'
PlugStart 'haya14busa/incsearch.vim'
PlugStart 'haya14busa/incsearch-fuzzy.vim'
PlugStart 'jszakmeister/vim-togglecursor'
PlugStart 'tpope/vim-surround'
PlugStart 'tpope/vim-commentary'
PlugStart 'rhysd/accelerated-jk'
PlugStart 'lvht/fzf'
PlugStart 'neoclide/coc.nvim'
"Below plugins should be lazy loaded
" Plug 'pearofducks/ansible-vim', { 'for': 'yaml' } 
" autocmd! User ansible-vim echom 'ansible-vim is now loaded!'
" Plug 'hashivim/vim-terraform'
" autocmd! User vim-terraform echom 'vim-terraform is now loaded!'
" Plug 'glench/vim-jinja2-syntax', { 'for': 'jinja2' }
