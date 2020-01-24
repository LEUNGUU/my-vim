#!/usr/bin/env bash

# step 1
git submodule update --init --remote

# step 2
curl -sL install-node.now.sh/lts > install_node.sh
mkdir -p $HOME/.local/node
echo 'y' | bash install_node.sh --prefix $HOME/.local/node

# cleanup
rm -rf install_node.sh
