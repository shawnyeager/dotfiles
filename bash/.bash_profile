# Source sensitive environment variables
[ -f "$HOME/.bash_private" ] && source "$HOME/.bash_private"

# Source main shell configuration
[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"
