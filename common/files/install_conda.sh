#!/bin/bash

cd /tmp
wget $1 -O anaconda.sh
bash anaconda.sh -b -p $HOME/anaconda3
