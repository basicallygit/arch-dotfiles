#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export PS1="\[\033[38;5;222m\]\w\[\033[38;5;152m\]   \[$(tput sgr0)\]"
alias cleanup='sh ~/.scripts/cleanup.sh'
