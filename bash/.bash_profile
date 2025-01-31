# .bash_profile

# Get sensitive env variables not managed in repo
if [[ -f "$HOME/.bash_private" ]]; then
  source "$HOME/.bash_private"
fi

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs
