#!/usr/bin/env bash

WORKDIR=$(dirname $(realpath "$0"))

ln -fns "$WORKDIR/.profile" "$HOME/.profile"
ln -fns "$WORKDIR/.bashrc" "$HOME/.bashrc"

mkdir -p "$HOME/.local/bin"
chmod +x "$WORKDIR/.local/bin/update"
ln -fns "$WORKDIR/.local/bin/update" "$HOME/.local/bin/update"

ln -fns "$WORKDIR/.gitconfig" "$HOME/.gitconfig"

if [[ "$OSTYPE" == linux-gnu* ]]; then
    ln -fns "$WORKDIR/.zshenv" "$HOME/.zshenv"
    ln -fns "$WORKDIR/.zshrc" "$HOME/.zshrc"

    mkdir -p "$HOME/.config/gh"
    ln -fns "$WORKDIR/gh/config.yml" "$HOME/.config/gh/config.yml"

    ln -fns "$WORKDIR/.tmux.conf" "$HOME/.tmux.conf"

    ln -fns "$WORKDIR/alacritty" "$HOME/.config/alacritty"

    ln -fns "$WORKDIR/i3" "$HOME/.config/i3"

    mkdir -p "$HOME/.config/Code/User"
    ln -fns "$WORKDIR/Code/User/settings.json" "$HOME/.config/Code/User/settings.json"

elif [[ "$OSTYPE" == cygwin* || "$OSTYPE" == msys* ]]; then
    mkdir -p "$HOME/AppData/Roaming/Code/User"
    ln -fns "$WORKDIR/Code/User/settings.json" "$HOME/AppData/Roaming/Code/User/settings.json"
fi
