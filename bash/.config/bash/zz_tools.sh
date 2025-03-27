[[ -n "$BASH_VERSION" ]] || return 0 # Only run in Bash

# Mise (tool version manager)
if command -v mise &>/dev/null; then
  eval "$(mise activate bash)"
fi

# FZF (fuzzy finder)
if command -v fzf &>/dev/null; then
  source /usr/share/fzf/completion.bash
  source /usr/share/fzf/key-bindings.bash
fi

# Tailscale completion
source <(tailscale completion bash)

# Television completion
eval "$(tv init bash)"

# Zoxide (smart `cd` alternative) - must be last
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init bash)"
fi
