#!/bin/bash

cd /tmp
wget $1
tar -xvf ideaIU*
mkdir -p ~/bin
mv idea-IU* ~/bin/intellij
touch ~/bin/intellij/exists.txt
