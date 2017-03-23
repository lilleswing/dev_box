#!/bin/bash

git config --global user.name "$1"
git config --global user.email "$2"
git config --global push.default simple
git config --global branch.autosetuprebase always
git config --global branch.master.rebase true
