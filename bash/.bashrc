# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
#
# Use VSCode instead of neovim as your default editor
# export EDITOR="code"
#
# Set a custom prompt with the directory revealed (alternatively use https://starship.rs)
# PS1="\W \[\e]0;\w\a\]$PS1"

# Source sensitive environment variables
[ -f "$HOME/.bash_private" ] && source "$HOME/.bash_private"

alias du='ncdu'
alias ncdu='ncdu --color dark'
alias vim='nvim'
alias duf='duf --hide special'

export SSH_AUTH_SOCK=/home/shawn/.bitwarden-ssh-agent.sock
export HUGO_MODULE_WORKSPACE=/home/shawn/Work/hugo.work
