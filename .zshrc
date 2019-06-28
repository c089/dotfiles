#
# User configuration sourced by interactive shells
#

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

alias k='kubectl'
alias f='fd' # quickly typing `fd` is escape sequence in emacs
alias e='emacsclient -nq'
