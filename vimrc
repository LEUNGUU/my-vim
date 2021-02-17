" {{{ defaults
scriptencoding utf-8
if filereadable(expand('$VIMRUNTIME/defaults.vim'))
    unlet! g:skip_defaults_vim
    source $VIMRUNTIME/defaults.vim
endif
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Switch syntax highlighting on
syntax on
" }}}

" Plugin loading and settings
let g:VimPack_Setup_Folders = ['after', 'autoload', 'backup', 'colors', 'doc', 'snippets', 'spell', 'swaps', 'syntax', 'tags', 'undo']
let g:VimPack_Update_Frequency = 5
let g:VimPack_Auto_Install = 1
let g:VimPack_Auto_Update = 1

call pack#load()

" PlugStart 'editorconfig/editorconfig-vim'
PlugStart 'tpope/vim-commentary'
PlugStart 'vim-scripts/vim-indent-object'
PlugStart 'tpope/vim-surround'
PlugStart 'bronson/vim-visual-star-search'
PlugStart 'tpope/vim-repeat'
PlugStart 'vim-airline/vim-airline'
PlugStart 'vim-airline/vim-airline-themes'
PlugStart 'w0ng/vim-hybrid'
PlugStart 'itchyny/vim-cursorword'
PlugStart 'mg979/vim-visual-multi'
PlugStart 'haya14busa/incsearch.vim'
PlugStart 'haya14busa/incsearch-fuzzy.vim'
PlugStart 'rhysd/accelerated-jk'
PlugStart 'romainl/vim-cool'
" PlugStart 'junegunn/fzf'
" PlugStart 'junegunn/fzf.vim'

" PlugOpt 'dzeban/vim-log-syntax'
" PlugOpt 'w0rp/ale'
" PlugOpt 'mileszs/ack.vim'
" command! -nargs=* Ack :packadd ack.vim | Ack <f-args>
" PlugOpt 'pearofducks/ansible-vim'
" PlugOpt 'hashivim/vim-terraform'
" PlugOpt 'fatih/vim-go'
" PlugOpt 'elzr/vim-json'

" {{{ autocmds for loading extensions
" augroup extensions
" 	autocmd!
" 	" autocmd BufRead,BufNewFile *.go set filetype=go
" 	autocmd FileType go packadd vim-go | redraw
" 	" autocmd BufRead,BufNewFile *.yml set filetype=yaml
" 	autocmd FileType yaml,yml packadd ansible-vim | redraw
"         " autocmd BufRead,BufNewFile *.tf set filetype=tf
"         autocmd FileType tf packadd vim-terraform | redraw
"         " autocmd BufRead,BufNewFile *.json set filetype=json
"         autocmd FileType json packadd vim-json | redraw
" 	autocmd FileType vim,go,python,zsh,sh,yaml,yml,tf silent! packadd ale | redraw
" augroup end
" }}}

" {{{ autocmds for everything else
" enable Omnicomplete
" set omnifunc=syntaxcomplete#Complete
" augroup defaults
"     autocmd!
"     autocmd BufWritePost $MYVIMRC source %
"     autocmd BufWritePre,InsertLeave * checktime
"     autocmd BufWritePre,InsertLeave * :%s/\s\+$//e
"     autocmd BufWritePre * silent! :%s#\($\n\s*\)\+\%$##
"     autocmd BufWritePre,InsertLeave * silent! :retab!
"     autocmd InsertLeave * call functions#Save()
"     autocmd BufEnter * set cursorline
"     autocmd BufLeave * set nocursorline
"     autocmd BufEnter,BufLeave,BufWritePost * redraw!
"     autocmd CursorHold,BufEnter,BufWritePost,ShellCmdPost * let f=system('[[ $(git diff --shortstat 2> /dev/null | tail -n1) != "" ]] && echo "*"')
"     autocmd CursorHold,VimEnter,BufEnter,ShellCmdPost * let b=system('git branch 2>/dev/null | grep \* | sed "s/\*//g"')
"     autocmd CursorHold,VimEnter,BufEnter,ShellCmdPost * let c=split(b, '')
"     " autocmd VimEnter * source $MYVIMRC
"     autocmd FileType * set textwidth=80
"     autocmd FileType python setlocal omnifunc=python3complete#Complete
"     autocmd BufRead,BufEnter .env :ALEDisableBuffer
"     autocmd BufEnter,CursorHold * checktime
"     autocmd BufNewFile,BufRead */.kube/config  setfiletype yaml
"     autocmd CursorHold * call functions#Save()
" augroup end
" }}}

" {{{ all plugins settings
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
" let g:terraform_align=1
" let g:terraform_fmt_on_save=1
" vim-terraform

" ansible-vim
" let g:ansible_unindent_after_newline = 1
" let g:ansible_attribute_highlight = "ob"
" ansible-vim

" incsearch-fuzzy
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)
" incsearch-fuzzy

" vim-cool
let g:CoolTotalMatches = 1
" vim-cool

" ale settings
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" ale settings
" }}}

" {{{ conditional settings
if &diff
    nnoremap <C-q> :qa!<cr>
    set foldmethod=diff
    set list
    set nowrap
    augroup diff
        autocmd!
        autocmd VimEnter * ALEDisable
    augroup end
endif

if exists('+breakindent')
    set breakindent
endif
" Centralize backups, swapfiles and undo history
if exists("&backupdir")
    set backupdir=~/.vim/backup//
endif
if exists("&directory")
    set directory=~/.vim/swaps//
endif
if exists("&undodir")
    set undolevels=5000
    set undodir=~/.vim/undo//
    set undofile
endif
" }}}

" {{{ common settings
set synmaxcol=1000
set modeline
set report=0
set lazyredraw " to avoid scrolling problems
" set pastetoggle=<F2>
set nowrapscan
set hls
set mouse=nv
set encoding=utf-8
set novisualbell
set noerrorbells
set fileformats=unix,dos,mac
set virtualedit=block
" set formatoptions+=1

" builtin plugins
packadd! matchit
packadd! editexisting

autocmd BufEnter * silent! lcd %:p:h

" if sudo, disable vim swap/backup/undo/shada/viminfo writing
if $SUDO_USER !=# '' && $USER !=# $SUDO_USER
		\ && $HOME !=# expand('~'.$USER)
		\ && $HOME ==# expand('~'.$SUDO_USER)

	set noswapfile
	set nobackup
	set nowritebackup
	set noundofile
	if has('nvim')
		set shada="NONE"
	else
		set viminfo="NONE"
	endif
endif

" History saving
set history=1000
if has('nvim')
	set shada='300,<50,@100,s10,h
else
	set viminfo='300,<10,@50,h,n$DATA_PATH/viminfo
endif

" clipboard
if has('clipboard')
	set clipboard& clipboard+=unnamedplus
endif

" Wildmenu
if has('wildmenu')
	" set nowildmenu
	" set wildmode=list:longest,full
	" set wildoptions=tagfile
	" set wildignorecase
	set wildignore+=.git,.hg,.svn,.stversions,*.pyc,*.spl,*.o,*.out,*~,%*
	set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store
	set wildignore+=**/node_modules/**,**/bower_modules/**,*/.sass-cache/*
	set wildignore+=application/vendor/**,**/vendor/ckeditor/**,media/vendor/**
	set wildignore+=__pycache__,*.egg-info,.pytest_cache
endif

 " Tabs and Indents
" set textwidth=120    " Text width maximum chars before wrapping
set expandtab     " Don't expand tabs to spaces.
set tabstop=2       " The number of spaces a tab is
set softtabstop=2   " While performing editing operations
set shiftwidth=2    " Number of spaces to use in auto(indent)
set smarttab        " Tab insert blanks according to 'shiftwidth'
set autoindent      " Use same indenting on new lines
set smartindent     " Smart autoindenting on new lines
set shiftround      " Round indent to multiple of 'shiftwidth'

" searching
set ignorecase      " Search ignoring case
set smartcase       " Keep case when searching with *
set infercase       " Adjust case in insert completion mode
set incsearch       " Incremental search
set wrapscan        " Searches wrap around the end of the file
set showmatch       " Jump to matching bracket
set matchpairs+=<:> " Add HTML brackets to pair matching
set matchtime=1     " Tenths of a second to show the matching paren
set cpoptions-=m    " showmatch will wait 0.5s or until a char is typed
set showfulltag     " Show tag and tidy search in completion
"set complete=.      " No wins, buffs, tags, include scanning

if exists('+inccommand')
	set inccommand=nosplit
endif

" Behavior
set nowrap                      " No wrap by default
set linebreak                   " Break long lines at 'breakat'
set breakat=\ \	;:,!?           " Long lines break chars
set nostartofline               " Cursor in same column for few commands
set whichwrap+=h,l,<,>,[,],~    " Move to following line on certain keys
set splitbelow splitright       " Splits open bottom right
set switchbuf=useopen,usetab    " Jump to the first open window in any tab
set switchbuf+=vsplit           " Switch buffer behavior to vsplit
set backspace=indent,eol,start  " Intuitive backspacing in insert mode
set diffopt=filler,iwhite       " Diff mode: show fillers, ignore whitespace
set completeopt=menuone         " Always show menu, even for one item
set completeopt+=noselect       " Do not select a match in the menu

" Editor UI
set noshowmode          " Don't show mode in cmd window
set shortmess=aoOTI     " Shorten messages and don't show intro
set scrolloff=2         " Keep at least 2 lines above/below
set sidescrolloff=5     " Keep at least 5 lines left/right
set number              " Don't show line numbers
set relativenumber
set noruler             " Disable default status ruler
set list                " Show hidden characters

set showtabline=2       " Always show the tabs line
set winwidth=30         " Minimum width for active window
set winminwidth=10      " Minimum width for inactive windows
set winheight=4         " Minimum height for active window
set winminheight=1      " Minimum height for inactive window
set pumheight=15        " Pop-up menu's line height
set helpheight=12       " Minimum help window height
set previewheight=12    " Completion preview height

set showcmd             " Show command in status line
set cmdheight=2         " Height of the command line
set cmdwinheight=5      " Command-line lines
set equalalways         " Resize windows on split or close
set laststatus=2        " Always show a status line
set colorcolumn=120      " Highlight the 80th character limit
set display=lastline
hi ExtraWhitespace cterm=underline
match ExtraWhitespace /\s\+$/

" UI Symbols
" icons:  ▏│ ¦ ╎ ┆ ⋮ ⦙ ┊ 
set showbreak=↪
set listchars=tab:\▏\ ,extends:⟫,precedes:⟪,nbsp:␣,trail:·
"set fillchars=vert:▉,fold:─
" }}}

" {{{ mappings
let mapleader=";"
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

" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" use :Q exit
map :Q :q
map <M-q> :q<Cr>
nnoremap q :q<CR>

" use ctrl+s to save
nnoremap <C-s> :<C-u>write<CR>

" double leader toggle visual
nmap <Leader><Leader> V

" switch between buffers
nnoremap <leader>l :bp<cr>
nnoremap <leader>k :bn<cr>

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

" Toggle fold
nnoremap <CR> za

" Focus the current fold by closing all others
nnoremap <S-Return> zMzvzt

" The plugin rhysd/accelerated-jk moves through display-lines in normal mode,
" these mappings will move through display-lines in visual mode too.
vnoremap j gj
vnoremap k gk

" Navigation in command line
cnoremap <C-h> <Home>
cnoremap <C-l> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>

" Remove spaces at the end of lines
nnoremap <Leader>cw :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>

" Start an external command with a single bang
nnoremap ! :!

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" Shortcut to use blackhole register by default
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
nnoremap x "_x
vnoremap x "_x
nnoremap X "_X
vnoremap X "_X

" Shortcut to use clipboard with <leader>
nnoremap <leader>d dd
vnoremap <leader>d dd
nnoremap <leader>D DD
vnoremap <leader>D DD
nnoremap <leader>c c
vnoremap <leader>c c
nnoremap <leader>C C
vnoremap <leader>C C
nnoremap <leader>x x
vnoremap <leader>x x
nnoremap <leader>X X
vnoremap <leader>X X

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
" }}}
