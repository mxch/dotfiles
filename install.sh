#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"
SETUP_DIR="${DOTFILES_DIR}/setup"
CURR_DIR=$(pwd)
DOTFILES=(tmux git vim zsh dir_colors mbsync mutt scripts)
APPS=(tmux vim zsh stow tree curl mutt isync notmuch pass)

# install apps
for app in ${APPS[@]}; do
  sudo apt install ${app};
done

# setup dotfiles
cd ${DOTFILES_DIR}
for dotfile in ${DOTFILES[@]}; do
  stow ${dotfile};
done
cd ${CURR_DIR}

# change default shell
chsh -s /usr/bin/zsh
