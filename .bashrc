#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias g++='g++ -fdiagnostics-color'
alias g++20='g++ -std=c++20 -fdiagnostics-color -pedantic -Wall -Wextra'
alias rustc='rustc --color always'
alias less='less -R'
alias kattis='g++20 -g main.cc && cat input | ./a.out'

COLOR2="$(tput setaf 2)"
COLOR10="$(tput setaf 10)"
RESET="$(tput sgr0)"
PS1='${COLOR2}\u@\h ${COLOR10}\W ${RESET}\$ '

. "$HOME/.cargo/env"

