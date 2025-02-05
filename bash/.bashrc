#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.local/share/omakub/defaults/bash/rc

# yazi shell wrapper
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

# Editor used by CLI
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

export PAGER="bat"

# Catppuccin macchiato theme for fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#b7bdf8,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--multi"

# Bitward ssh-agent
export SSH_AUTH_SOCK=/home/shawn/.bitwarden-ssh-agent.sock

# Paths
PATH=$HOME/.local/bin:$PATH

# Aliases
alias b='${(z)BROWSER}'
alias cat='bat'
alias df='ncdu'
alias duf='duf -hide special'
alias e='${(z)VISUAL:-${(z)EDITOR}}'
alias find='fd'
alias help='tldr'
alias python='python3'
alias top='htop'
alias vim='nvim'
alias du='gdu'
alias colorize='ccze'

# Tailscale completion
source <(tailscale completion bash)

# Ignore case when tab-completing
bind 'set completion-ignore-case on'

eval "$(starship init bash)"

# Execute only when ssh session
if [ -n "$SSH_TTY" ]; then
  echo && fortune && echo
fi

# Override TERM if in ghostty and remote
if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
  export TERM=xterm-256color
fi
