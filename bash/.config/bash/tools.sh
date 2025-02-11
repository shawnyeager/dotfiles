# Mise (tool version manager)
if command -v mise &>/dev/null; then
  eval "$(mise activate bash)"
fi

# Zoxide (smart `cd` alternative)
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init bash)"
fi

# FZF (fuzzy finder)
if command -v fzf &>/dev/null; then
  source /usr/share/fzf/completion.bash
  source /usr/share/fzf/key-bindings.bash
fi
