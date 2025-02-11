# Exit if not interactive
[[ $- != *i* ]] && return

# Source all scripts from ~/.config/bash
for file in ~/.config/bash/*.sh; do
  [ -r "$file" ] && source "$file"
done
