#!/bin/bash

# initialize pathogen
#mkdir -p ~/.vim/autoload ~/.vim/bundle && \
#curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

mkdir ~/.vim/backup
mkdir ~/.vim/tmp

# link config files
#ln -s ~/dev/dotfiles/.zshrc ~/.zshrc
#ln -s ~/dev/dotfiles/.gitconfig ~/.gitconfig
#ln -s ~/dev/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dev/dotfiles/.vimrc ~/.vimrc
ln -s ~/dev/dotfiles/vim/colors ~/.vim/colors
ln -s ~/dev/dotfiles/vim/ftplugin ~/.vim/ftplugin
