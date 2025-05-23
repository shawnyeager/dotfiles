[[ -n "$BASH_VERSION" ]] || return 0 # Only run in Bash

export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
export PAGER="bat"
export QT_QPA_PLATFORM="wayland"

# Catppuccin macchiato theme for fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#b7bdf8,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--multi"
