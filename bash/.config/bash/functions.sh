[[ -n "$BASH_VERSION" ]] || return 0 # Only run in Bash

# Compression
compress() { tar -czf "${1%/}.tar.gz" "${1%/}"; }
alias decompress="tar -xzf"

# Convert webm files generated by the Gnome screenshot video recorder to mp4s that are more compatible
webm2mp4() {
  input_file="$1"
  output_file="${input_file%.webm}.mp4"
  ffmpeg -i "$input_file" -c:v libx264 -preset slow -crf 22 -c:a aac -b:a 192k "$output_file"
}

# Allow brightness controls if ASDControl is installed
if [ -f "/usr/local/bin/acdcontrol" ]; then
  export APPLE_DISPLAY_DEV=$(acdcontrol --detect /dev/usb/hiddev* 2>/dev/null | sed -n 's|^\(/dev/usb/hiddev[0-9]*\):.*|\1|p')

  alias brup="acdcontrol $APPLE_DISPLAY_DEV -- +10000"
  alias brdown="acdcontrol $APPLE_DISPLAY_DEV -- -10000"

  alias brmax="acdcontrol $APPLE_DISPLAY_DEV -- +60000"
  alias brmin="acdcontrol $APPLE_DISPLAY_DEV -- -60000"
fi

# yazi shell wrapper
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}
