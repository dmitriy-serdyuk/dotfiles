#!/usr/bin/env sh
git submodule init
git submodule update
dotfiles --sync
vim +InstallPlugin +qall
