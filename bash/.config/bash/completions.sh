[[ -n "$BASH_VERSION" ]] || return 0 # Only run in Bash

# Source Bash completion directly
[ -f /usr/share/bash-completion/bash_completion ] && source /usr/share/bash-completion/bash_completion

# Additional completions
source <(tailscale completion bash)
eval "$(tv init bash)"
