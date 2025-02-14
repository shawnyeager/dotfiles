# ~/.bashrc

# Ensure this is an interactive shell
[[ $- != *i* ]] && return

# Load essential environment variables first
source ~/.config/bash/env.sh

# Load shell functions and utilities
source ~/.config/bash/functions.sh

# Load aliases next
source ~/.config/bash/aliases.sh

# Load command completions (only needed for interactive use)
source ~/.config/bash/completions.sh

# Load prompt customization
source ~/.config/bash/prompt.sh

# Load other shell settings
source ~/.config/bash/shell.sh

# Finally, load zz_tools.sh (Zoxide and similar tools must be last)
source ~/.config/bash/zz_tools.sh
