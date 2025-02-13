# History control
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=32768
HISTFILESIZE="${HISTSIZE}"

# Autocompletion
[ -f /usr/share/bash-completion/bash_completion ] && source /usr/share/bash-completion/bash_completion

# Set complete path
export PATH="./bin:$HOME/.local/bin:$HOME/.local/share/omakub/bin:$PATH"
set +h

# Set Omakub path
export OMAKUB_PATH="$HOME/.local/share/omakub"

# Enable case-insensitive globbing for `cd`
shopt -s nocaseglob
