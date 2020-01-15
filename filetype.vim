" For python
autocmd bufnewfile *.py call HeaderPython()
function! HeaderPython()
    call setline(1, "#!/usr/bin/env python3")
    call setline(2, "# -*- coding: utf-8 -*-")
    normal G
    normal o
    normal o
    call setline(5, "if __name__ == '__main__':")
    call setline(6, "    pass")
endfunc

" For shell
autocmd bufnewfile *.sh call HeaderSh()
function! HeaderSh()
    call setline(1, "#!/usr/bin/env bash")
    normal G
    normal o
    normal o
endfunc


" For json
autocmd FileType json syntax match Comment +\/\/.\+$+
