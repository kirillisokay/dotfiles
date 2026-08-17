# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
# /etc/omarchy.conf is written by omarchy-dev-link. When absent, force the
# package default instead of preserving a stale inherited dev-link value before
# we decide which rc file to source.
if [[ -f /etc/omarchy.conf ]]; then
  source /etc/omarchy.conf
  export OMARCHY_PATH="${OMARCHY_PATH:-/usr/share/omarchy}"
else
  export OMARCHY_PATH=/usr/share/omarchy
fi
source "$OMARCHY_PATH/default/bash/rc"

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
#
# Use VSCode instead of neovim as your default editor
# export EDITOR="code"
#
# Set a custom prompt with the directory revealed (alternatively use https://starship.rs)
# parse_git_branch() {
  # git branch 2>/dev/null | sed -n '/\* /s///p'
# }
#
# PS1='\[\e[32m\]\u\[\e[0m\]@\[\e[34m\]\h \[\e[33m\]\w\[\e[36m\]$( [ -d .git ] && echo "($(parse_git_branch))")\[\e[0m\] \$ '
#
eval "$(starship init bash)"

export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"

# opencode
export PATH=/home/shine/.opencode/bin:$PATH

. "$HOME/.local/share/../bin/env"

export PATH="$PATH:/home/shine/.cargo/bin"
export SYSTEMD_EDITOR=cat
alias hx="helix"
# shellcheck disable=SC2034

alias ghc="git branch --merged | grep -v '^\*' | xargs git branch -d"

export EZA_CONFIG_DIR="$HOME/.config/eza"
