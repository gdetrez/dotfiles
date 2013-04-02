#!/bin/sh

git submodule init
git submodule update

links=( .vim .vimrc .gitconfig .gitignore_global .oh-my-zsh .tmux.conf .zshrc .ssh )
for file in "${links[@]}"
do
  if [ ! \( -h ~/$file \) ]
  then
    if [ -e ~/$file ]
    then
      mv ~/$file ~/$file.bkp;
    fi
    ln -s ~/.dotfiles/$file ~/$file
  fi
done
