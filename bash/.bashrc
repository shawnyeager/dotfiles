# Exit if not interactive
[[ $- != *i* ]] && return

# Source all scripts from ~/.config/bash in natural alphabetical order
for file in ~/.config/bash/*.sh; do
  [ -r "$file" ] && source "$file"
done
