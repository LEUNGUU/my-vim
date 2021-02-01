#!/bin/bash

source ./scripts/inventory.sh

add(){
  git submodule add 'https://github.com/'$1 $2
}

delete() {
  git submodule deinit $1
  git rm $1
  rm -Rf .git/modules/$1
}

update_plugins() {
  git submodule update --remote --merge
  git commit
}

install_start() {
  # delete first
#  for plug in $(ls pack/vendor/start);do
#    if [[ ! " ${PlugStart[@]} " =~ " ${plug} " ]]; then
#      delete pack/vendor/start/${plug}
#    fi
#  done
  for plug in ${Plugins[start]};do
    plugname=$(echo ${plug} | cut -d/ -f2)
    add ${plug} pack/vendor/start/${plugname}
  done
}

install_opt() {
  # delete first
#  for plug in $(ls pack/vendor/opt);do
#    # if the plugin not in the list of Opt, then delete it
#    if [[ ! " ${PlugOpt[@]} " =~ " ${plug} " ]]; then
#      delete pack/vendor/opt/${plug}
#    fi
#  done
  for plug in ${Plugins[opt]};do
     plugname=$(echo ${plug} | cut -d/ -f2)
     add ${plug} pack/vendor/opt/${plugname}
  done
}

main(){
  install_start
  install_opt
}

main
