shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=32768
HISTFILESIZE="${HISTSIZE}"

# Enable case-insensitive globbing (affects native `cd`)
shopt -s nocaseglob

[ -f /usr/share/bash-completion/bash_completion ] && source /usr/share/bash-completion/bash_completion

export PATH="./bin:$HOME/.local/bin:$HOME/.local/share/omakub/bin:$PATH"
set +h

export OMAKUB_PATH="$HOME/.local/share/omakub"
