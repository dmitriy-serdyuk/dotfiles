#!/usr/bin/env sh
git clone --recursive https://github.com/dmitriy-serdyuk/dotfiles.git

pushd dotfiles

ln -s ~/.tmux/.tmux.conf tmux.conf
dotfiles --sync -C .dotfilesrc --force
vim +InstallPlugin +qall

popd
