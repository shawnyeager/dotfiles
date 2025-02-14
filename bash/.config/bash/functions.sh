[[ -n "$BASH_VERSION" ]] || return 0 # Only run in Bash

# Compress files into tar.gz
compress() { tar -czf "${1%/}.tar.gz" "${1%/}"; }

# Extract compressed files
alias decompress="tar -xzf"

# Convert WebM files to MP4
webm2mp4() {
  input_file="$1"
  output_file="${input_file%.webm}.mp4"
  ffmpeg -i "$input_file" -c:v libx264 -preset slow -crf 22 -c:a aac -b:a 192k "$output_file"
}

# yazi shell wrapper
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}
