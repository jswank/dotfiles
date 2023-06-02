#!/bin/sh
#
# Install my dotfiles.
#

rm $HOME/.zshrc $HOME/.profile
find * -maxdepth 0 -type d | xargs -I{} ./stow.sh -t $HOME {}
