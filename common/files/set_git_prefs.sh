#!/bin/bash
# 1 = path to git folder
# 2 = git username
# 3 = git email

touch ~/.known_hosts
cd $1
git config user.name "$2"
git config user.email "$3"
git config branch.autosetuprebase always
git config branch.master.rebase true
