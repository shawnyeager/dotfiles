# Source sensitive environment variables
[ -f "$HOME/.bash_private" ] && source "$HOME/.bash_private"

export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"

# Source main shell configuration
[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"
