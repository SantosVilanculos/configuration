#!/usr/bin/env bash

WORKDIR=$(dirname $(realpath "$0"))

if [[ "$OSTYPE" == linux-android* ]]; then
  ln -fns "$WORKDIR/configuration/home/.zshenv" "$HOME/.zshenv"
  ln -fns "$WORKDIR/configuration/home/.zshrc" "$HOME/.zshrc"
  mkdir -p "$HOME/.local/bin"
  ln -fns "$WORKDIR/configuration/home/.local/bin/update" "$HOME/.local/bin/update"

elif [[ "$OSTYPE" == linux-gnu* ]]; then
  stow --dir "$WORKDIR/configuration/home" --target "$HOME" -R "./" -v
  sudo stow --dir "$WORKDIR/configuration/root" --target "/" -R "./" -v

  if [ -x "/usr/local/bin/mailpit" ] && [ -f "/etc/systemd/system/mailpit.service" ]; then
    sudo systemctl enable mailpit.service
    sudo systemctl start mailpit.service
  fi

elif [[ "$OSTYPE" == cygwin* || "$OSTYPE" == msys* ]]; then
  mkdir -p "$HOME/AppData/Roaming/Code/User"
  cp "$WORKDIR/configuration/home/.config/Code/User/settings.json" "$HOME/AppData/Roaming/Code/User/settings.json"
fi
