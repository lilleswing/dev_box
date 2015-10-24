#!/bin/bash
cd /tmp
git clone https://github.com/ghuntley/terminator-solarized.git
cd terminator-solarized
mkdir -p ~/.config/terminator/
touch ~/.config/terminator/config
# replace current config:
cp config ~/.config/terminator
cd ~/
rm -rf /tmp/terminator-solarized
