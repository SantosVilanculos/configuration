#!/usr/bin/env bash

WORKDIR=$(dirname $(realpath "$0"))

ln -fns "$WORKDIR/.bashrc" "$HOME/.bashrc"

ln -fns "$WORKDIR/.zshenv" "$HOME/.zshenv"
ln -fns "$WORKDIR/.zshrc" "$HOME/.zshrc"

ln -fns "$WORKDIR/.gitconfig" "$HOME/.gitconfig"

mkdir -p "$HOME/.config/gh"
ln -fns "$WORKDIR/gh/config.yml" "$HOME/.config/gh/config.yml"

ln -fns "$WORKDIR/.tmux.conf" "$HOME/.tmux.conf"

ln -fns "$WORKDIR/alacritty" "$HOME/.config/alacritty"

ln -fns "$WORKDIR/i3" "$HOME/.config/i3"

mkdir -p "$HOME/.config/Code/User"
ln -fns "$WORKDIR/Code/User/settings.json" "$HOME/.config/Code/User/settings.json"
