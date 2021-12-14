#!/usr/bin/env zsh

# Fix 256color
if [[ ("$TERM" = 256color || "$TERM" = screen || "$TERM" = xterm* ) && -f /etc/lscolor-256color ]] {
  eval $(dircolors -b /etc/lscolor-256color)
} else {
  eval $(dircolors)
}
