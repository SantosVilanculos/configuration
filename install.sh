#!/usr/bin/env bash

WORKDIR=$(dirname $(realpath "$0"))


mkdir -p "$HOME/.local/bin"
chmod +x "$WORKDIR/bin/update"
ln -fns "$WORKDIR/bin/update" "$HOME/.local/bin/update"

ln -fns "$WORKDIR/git/.gitconfig" "$HOME/.gitconfig"

if [[ "$OSTYPE" == linux-android* || "$OSTYPE" == linux-gnu* ]]; then
  ln -fns "$WORKDIR/zsh/.zshenv" "$HOME/.zshenv"
  ln -fns "$WORKDIR/zsh/.zshrc" "$HOME/.zshrc"
fi

if [[ "$OSTYPE" == linux-gnu* ]]; then
  ln -fns "$WORKDIR/rofi" "$HOME/.config/rofi"
  ln -fns "$WORKDIR/i3" "$HOME/.config/i3"

  mkdir -p "$HOME/.config/gh"
  ln -fns "$WORKDIR/gh/config.yml" "$HOME/.config/gh/config.yml"

  ln -fns "$WORKDIR/tmux" "$HOME/.config/tmux"

  ln -fns "$WORKDIR/alacritty" "$HOME/.config/alacritty"
  ln -fns "$WORKDIR/ghostty" "$HOME/.config/ghostty"

  mkdir -p "$HOME/.config/Code/User"
  ln -fns "$WORKDIR/code/settings.json" "$HOME/.config/Code/User/settings.json"

  ln -fns "$WORKDIR/nvim" "$HOME/.config/nvim"

  mkdir -p "$HOME/.nvm"
  ln -fns "$WORKDIR/nvm/default-packages" "$HOME/.nvm/default-packages"

  if [ -x "/usr/local/bin/mailpit" ] || [ -x "$HOME/.local/bin/mailpit" ]; then
    sudo ln -fns "$WORKDIR/mailpit/mailpit.service" "/etc/systemd/system/mailpit.service"
    sudo systemctl enable mailpit.service
    sudo systemctl start mailpit.service
  fi

elif [[ "$OSTYPE" == cygwin* || "$OSTYPE" == msys* ]]; then
  mkdir -p "$HOME/AppData/Roaming/Code/User"
  ln -fns "$WORKDIR/code/settings.json" "$HOME/AppData/Roaming/Code/User/settings.json"
fi
