# ---
if [ -f "$HOME/private.sh" ]; then
  source "$HOME/private.sh"
fi

# ---
if [ -d "$HOME/.bin" ]; then
  export PATH="$PATH:$HOME/.bin"
fi

if [ -d "$HOME/.local/bin" ]; then
  export PATH="$PATH:$HOME/.local/bin"
fi

if [ -d "/var/lib/flatpak/exports/bin/" ]; then
  export PATH="$PATH:/var/lib/flatpak/exports/bin"
fi

# ---
if [ -f "$HOME/.local/bin/zoxide" ]; then
  eval "$(zoxide init zsh)"
fi

# ---
if [ -d "$HOME/.config/composer/vendor/bin" ]; then
  export PATH="$PATH:$HOME/.config/composer/vendor/bin"
fi

# ---
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  source "$HOME/.nvm/nvm.sh"
fi

if [ -s "$HOME/.nvm/bash_completion" ]; then
  source "$HOME/.nvm/bash_completion"
fi

# ---
if [ -d "$HOME/.pyenv/bin" ]; then
  export PATH="$PATH:$HOME/.pyenv/bin"

  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# ---
if [ -f "$HOME/.cargo/env" ]; then
  source "$HOME/.cargo/env"
fi

# ---
if [ -d "/opt/nvim/bin" ]; then
  export PATH="$PATH:/opt/nvim/bin"
fi

# ---
if [ -s "/usr/share/doc/fzf/examples/key-bindings.zsh" ]; then
  source "/usr/share/doc/fzf/examples/key-bindings.zsh"
fi

if [ -s "/usr/share/doc/fzf/examples/completion.zsh" ]; then
  source "/usr/share/doc/fzf/examples/completion.zsh"
fi

