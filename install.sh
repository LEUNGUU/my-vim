#!/usr/bin/env bash
set +e
set +x

sudo yum install -y gcc make ncurses ncurses-devel
sudo yum install -y ctags git tcl-devel \
ruby ruby-devel \
lua lua-devel \
luajit luajit-devel \
python python-devel \
perl perl-devel \
perl-ExtUtils-ParseXS \
perl-ExtUtils-XSpp \
perl-ExtUtils-CBuilder \
perl-ExtUtils-Embed

sudo yum list installed | grep –i vim
sudo yum remove vim-enhanced vim-common vim-filesystem

sudo git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
--enable-multibyte \
--enable-rubyinterp \
--enable-pythoninterp \
--enable-perlinterp \
--enable-luainterp
make
sudo make install

cd ..
rm -rf vim

# step 1
git submodule update --init --remote

# step 2
curl -sL install-node.now.sh/lts > install_node.sh
mkdir -p $HOME/.local/node
echo 'y' | bash install_node.sh --prefix $HOME/.local/node

# cleanup
rm -rf install_node.sh
