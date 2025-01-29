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
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#b7bdf8,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--multi"
export SSH_AUTH_SOCK=/home/shawn/.bitwarden-ssh-agent.sock

PATH=$HOME/.local/bin:$PATH
PATH=$HOME/.local/share/mise/installs/cargo-usage-cli/1.3.0/bin:$PATH

alias b='${(z)BROWSER}'
alias cat='bat'
alias df='ncdu'
alias duf='duf -hide special'
alias e='${(z)VISUAL:-${(z)EDITOR}}'
alias find='fd'
alias help='tldr'
alias ls='eza'
alias python='python3'
alias top='htop'
alias vim='nvim'
alias du='gdu'
alias colorize='ccze'

# source /home/shawn/.config/op/plugins.sh
source <(tailscale completion bash)
eval "$(/usr/bin/mise activate bash)"

bind 'set completion-ignore-case on'

if [ -n "$SSH_TTY" ]; then
  eval "$(starship init bash)"
  echo && fortune && echo
fi
