" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Switch syntax highlighting on
syntax on


let g:VimPack_Setup_Folders = ['after', 'autoload', 'backup', 'colors', 'doc', 'snippets', 'spell', 'swaps', 'syntax', 'tags', 'undo']
let g:VimPack_Update_Frequency = 5
let g:VimPack_Auto_Install = 1
let g:VimPack_Auto_Update = 1
