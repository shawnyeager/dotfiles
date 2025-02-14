[[ $- != *i* ]] && return

# Enable case-insensitive tab completion for `cd`
bind 'set completion-ignore-case on'

# Source all scripts except tools
for file in ~/.config/bash/*.sh; do
  [[ "$file" != *"/zz_tools.sh" ]] && source "$file"
done

# Source tools last (Zoxide, etc.)
source ~/.config/bash/zz_tools.sh
