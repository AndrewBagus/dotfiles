# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Default Program
export EDITOR="nvim"
export TERMINAL="st"
export FILE="vifm"

# Cleanup
export ZDOTDIR="$HOME/.config/zsh"

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg>/dev/null && exec startx
