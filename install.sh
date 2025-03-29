#!/usr/bin/env bash

WORKDIR=$(dirname $(realpath "$0"))

if [[ "$OSTYPE" == linux-android* ]]; then
  ln -fnsv "$WORKDIR/.zshenv" "$HOME/.zshenv"
  ln -fnsv "$WORKDIR/.zshrc" "$HOME/.zshrc"

  mkdir -p "$HOME/.local/bin"
  ln -fnsv "$WORKDIR/.local/bin/update" "$HOME/.local/bin/update"

elif [[ "$OSTYPE" == linux-gnu* ]]; then
  mkdir -p "$HOME/.config/Code/User"
  mkdir -p "$HOME/.config/gh"
  mkdir -p "$HOME/.nvm"
  mkdir -p "$HOME/.vim"

  stow -d "$WORKDIR" -t "$HOME" -R -v "./"

elif [[ "$OSTYPE" == cygwin* || "$OSTYPE" == msys* ]]; then
  mkdir -p "$HOME/AppData/Roaming/Code/User"
  cp -v "$WORKDIR/.config/Code/User/settings.json" "$HOME/AppData/Roaming/Code/User/settings.json"
fi
