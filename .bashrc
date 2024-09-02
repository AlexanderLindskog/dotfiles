#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

COLOR2="$(tput setaf 2)"
COLOR10="$(tput setaf 10)"
RESET="$(tput sgr0)"
PS1='${COLOR2}\u@\h ${COLOR10}\W ${RESET}\$ '

. "$HOME/.cargo/env"

