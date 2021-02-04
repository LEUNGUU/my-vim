"{{{ autocmds for everything else
augroup defaults
	autocmd!
	autocmd BufWritePost $MYVIMRC source %
	autocmd BufWritePre,InsertLeave * checktime
	autocmd BufWritePre,InsertLeave * :%s/\s\+$//e
	autocmd BufWritePre * silent! :%s#\($\n\s*\)\+\%$##
	autocmd BufWritePre,InsertLeave * silent! :retab!
	autocmd InsertLeave * call functions#Save()
	autocmd BufEnter * set cursorline
	autocmd BufLeave * set nocursorline
	autocmd BufEnter,BufLeave,BufWritePost * redraw!
	autocmd CursorHold,BufEnter,BufWritePost,ShellCmdPost * let f=system('[[ $(git diff --shortstat 2> /dev/null | tail -n1) != "" ]] && echo "*"')
	autocmd CursorHold,VimEnter,BufEnter,ShellCmdPost * let b=system('git branch 2>/dev/null | grep \* | sed "s/\*//g"')
	autocmd CursorHold,VimEnter,BufEnter,ShellCmdPost * let c=split(b, '')
	" autocmd VimEnter * source $MYVIMRC
	autocmd FileType * set textwidth=80
	" autocmd FileType mail set textwidth=0
	" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType python setlocal omnifunc=python3complete#Complete
	" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
	" autocmd FileType clojure setlocal omnifunc=clojurecomplete#Complete
	" autocmd FileType sql setlocal omnifunc=sqlcomplete#Complete
	autocmd BufRead,BufEnter .env :ALEDisableBuffer
	autocmd BufEnter,CursorHold * checktime
	autocmd CursorHold * call functions#Save()
	" autocmd BufWritePost *.vue,*.js call functions#CompileJS()
augroup end
"}}}

