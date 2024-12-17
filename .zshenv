# ---
if [ -f "$HOME/environment.sh" ]; then
  source "$HOME/environment.sh"
fi

# ---
if [ -d "$HOME/.bin" ]; then
  export PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "/var/lib/flatpak/exports/bin/" ]; then
  export PATH="/var/lib/flatpak/exports/bin/:$PATH"
fi

# ---

if [ -f "$HOME/.local/bin/zoxide" ]; then
  eval "$(zoxide init zsh)"
fi

# ---
if [ -d "$HOME/.config/composer/vendor/bin" ]; then
  export PATH="$PATH:$HOME/.config/composer/vendor/bin"
fi

## ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ---
if [ -d "$HOME/.pyenv/bin" ]; then
  export PATH="$PATH:$HOME/.pyenv/bin"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# ---
if [ -f "$HOME/.cargo/env" ]; then
  . "$HOME/.cargo/env"
fi
