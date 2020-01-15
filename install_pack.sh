#!/bin/bash

add(){
git submodule add $1 $2
}

update(){
git submodule update --init --remote $1
}

delete(){
git rm $1
}
