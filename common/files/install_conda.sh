#!/bin/bash

cd /tmp
wget $1 -O anaconda.sh
bash anaconda.sh -b -p $HOME/anaconda3

export PATH="$HOME/anaconda3/bin:$PATH"
conda create -y --name daily
conda update conda
conda update anaconda
