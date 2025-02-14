[[ -n "$BASH_VERSION" ]] || return 0 # Only run in Bash

# Fortune message for SSH sessions
if [ -n "$SSH_TTY" ]; then
  echo && fortune && echo
fi

# Override TERM if in Ghostty and remote
if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
  export TERM=xterm-256color
fi
