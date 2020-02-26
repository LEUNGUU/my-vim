#!/bin/bash

add(){
git submodule add 'https://github.com/'$1 $2
}

PlugStart=(
'vim-airline/vim-airline' 'vim-airline/vim-airline-themes' 'w0ng/vim-hybrid' 'itchyny/vim-cursorword' 'terryma/vim-multiple-cursors' 'haya14busa/incsearch.vim' 'haya14busa/incsearch-fuzzy.vim' 'jszakmeister/vim-togglecursor' 'tpope/vim-surround' 'tpope/vim-commentary' 'rhysd/accelerated-jk' 'lvht/fzf' 'neoclide/coc.nvim' 'frazrepo/vim-rainbow' 'airblade/vim-gitgutter' 'romainl/vim-cool'
)
PlugOpt=(
'pearofducks/ansible-vim' 'hashivim/vim-terraform' 'fatih/vim-go'
)

install_start(){
for plug in ${PlugStart[@]};do
   plugname=$(echo ${plug} | cut -d/ -f2)
   add ${plug} pack/vendor/start/${plugname}
done
}

install_opt(){
for plug in ${PlugOpt[@]};do
   plugname=$(echo ${plug} | cut -d/ -f2)
   add ${plug} pack/vendor/opt/${plugname}
done
}

main(){
install_start
install_opt
}

main
