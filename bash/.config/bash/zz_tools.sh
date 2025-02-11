# 'zz_tools.sh' to ensure activated last by .bashrc loop

# Mise (tool version manager)
if command -v mise &>/dev/null; then
  eval "$(mise activate bash)"
fi

# FZF (fuzzy finder)
if command -v fzf &>/dev/null; then
  source /usr/share/fzf/completion.bash
  source /usr/share/fzf/key-bindings.bash
fi

# Zoxide (smart `cd` alternative); moved to end to ensure it's initialized last
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init bash)"
fi
