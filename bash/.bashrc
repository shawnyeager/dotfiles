#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.local/share/omakub/defaults/bash/rc

# Editor used by CLI
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
# export PAGER="bat"

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

source /home/shawn/.config/op/plugins.sh
source <(tailscale completion bash)
eval "$(/usr/bin/mise activate bash)"

if [ -n "$SSH_TTY" ]; then
  eval "$(starship init bash)"
  echo && fortune && echo
fi
