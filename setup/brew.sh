#!/bin/bash

echo "Starting brew.sh..."

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

progs=(
  tmux
  zsh
  tree
  stow
)

echo "Installing progs..."
brew install "${progs[@]}"

# Remove outdated versions from the cellar
brew cleanup

echo "Finished brew.sh..."
