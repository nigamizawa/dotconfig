#!/bin/zsh

# init zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.config/zprezto/^README.md(.N); do
  ln -sf "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# init gitconfig
ln -sf $HOME/.config/git/gitconfig $HOME/.gitconfig
