#!/bin/bash
mkdir -p ~/.vim/colors
cd /tmp
git clone https://github.com/altercation/vim-colors-solarized.git
cd vim-colors-solarized/colors
mv solarized.vim ~/.vim/colors
rm -rf /tmp/vim-colors-solarized
