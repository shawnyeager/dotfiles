#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.local/share/omakub/defaults/bash/rc

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
PATH=$HOME/.local/share/mise/installs/cargo-usage-cli/1.3.0/bin:$PATH

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

# Execute only when ssh session
if [ -n "$SSH_TTY" ]; then
  eval "$(starship init bash)"
  echo && fortune && echo
fi
