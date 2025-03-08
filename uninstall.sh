#!/usr/bin/env bash

WORKDIR=$(dirname $(realpath "$0"))

if [[ "$OSTYPE" == linux-android* ]]; then
  if [ "$WORKDIR/.zshenv" -ef "$HOME/.zshenv" ]; then
    rm -fv "$HOME/.zshenv"
  fi

  if [ "$WORKDIR/.zshrc" -ef "$HOME/.zshrc" ]; then
    rm -fv "$HOME/.zshrc"
  fi

  if [ "$WORKDIR/.local/bin/update" -ef "$HOME/.local/bin/update" ]; then
    rm -fv "$HOME/.local/bin/update"
  fi

elif [[ "$OSTYPE" == linux-gnu* ]]; then
  stow -d "$WORKDIR" -t "$HOME" -D -v "./"

elif [[ "$OSTYPE" == cygwin* || "$OSTYPE" == msys* ]]; then
  rm -fv "$HOME/AppData/Roaming/Code/User/settings.json"
fi
