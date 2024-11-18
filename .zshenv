# ---
if [ -d "$HOME/.config/composer/vendor/bin" ]; then
  export PATH="$PATH:$HOME/.config/composer/vendor/bin"
fi

## ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ---
export PYENV_ROOT="$HOME/.pyenv"
[[ -d "$PYENV_ROOT/bin" ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# ---
if [ -f "$HOME/.cargo/env" ]; then
  . "$HOME/.cargo/env"
fi
