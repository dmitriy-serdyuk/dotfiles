#!/usr/bin/env sh
git clone --recursive https://github.com/dmitriy-serdyuk/dotfiles.git

pushd dotfiles

dotfiles --sync -C .dotfilesrc --force
vim +InstallPlugin +qall

popd
