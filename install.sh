#!/bin/sh
#
# Install my dotfiles.
#

rm $HOME/.zshrc $HOME/.profile
ls -d */ | tr -d / | xargs ./stow.sh -t $HOME -R
