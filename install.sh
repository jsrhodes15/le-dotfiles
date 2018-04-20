#!/bin/bash

# Install oh-my-zsh if its not on this machine
if [[ -d "$ZSH" ]]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Symlink dotfiles
./make_symlinks.sh
