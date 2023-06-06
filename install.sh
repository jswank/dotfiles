#!/bin/sh
#
# Install my dotfiles.
#

STOW=$(which stow)
if [ -z "$STOW" ]; then
  STOW=./stow.sh
fi

rm -f $HOME/.zshrc $HOME/.profile >/dev/null 2>&1

find * -maxdepth 0 -type d | xargs -I{} $STOW -t "$HOME" {}
