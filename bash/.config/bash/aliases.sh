# File system
alias ls='eza -lh --group-directories-first --icons'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias find='fd'
alias cat='bat'
alias df='ncdu'
alias duf='duf -hide special'
alias python='python3'
alias vim='nvim'
alias e='${(z)VISUAL:-${(z)EDITOR}}'
alias top='htop'
alias help='tldr'

# Git
alias g='git'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcad='git commit -a --amend'

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Development
alias n='nvim'
alias d='docker'
alias lzg='lazygit'
alias lzd='lazydocker'
