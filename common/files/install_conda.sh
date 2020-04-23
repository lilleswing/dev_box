#!/bin/bash
if [ -d $HOME/miniconda3 ]; then
    echo "Conda Installed"
    exit 0
fi

cd /tmp
wget $1 -O anaconda.sh
bash anaconda.sh -b -p $HOME/miniconda3

export PATH="$HOME/miniconda3/bin:$PATH"
conda create -y --name daily
conda update conda
