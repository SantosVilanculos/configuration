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
