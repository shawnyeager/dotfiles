[[ -n "$BASH_VERSION" ]] || return 0 # Only run in Bash

# Enable color prompt
force_color_prompt=yes
color_prompt=yes

# Simple prompt with path in the window/pane title and caret for typing line
PS1=$'\uf0a9 '
PS1="\[\e]0;\w\a\]$PS1"

# Starship prompt
# eval "$(starship init bash)"
