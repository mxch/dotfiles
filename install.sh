#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"
SETUP_DIR="${DOTFILES_DIR}/setup"
CURR_DIR=$(pwd)
DOTFILES=(tmux git vim)

# install brew
${SETUP_DIR}/brew.sh

# setup dotfiles
cd ${DOTFILES_DIR}
for dotfile in ${DOTFILES[@]}; do
  stow ${dotfile};
done
cd ${CURR_DIR}

# change default shell
chsh -s /usr/local/bin/zsh
