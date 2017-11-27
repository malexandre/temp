#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -f /etc/bash_completion ]]; then
    /etc/bash_completion
fi

. /etc/profile.d/vte.sh

shopt -s histappend

export PATH=$PATH:/home/marc/app
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias ..='cd ..'
alias reloadbash='source ~/.bashrc'
alias bashrc='vim ~/.bashrc'
eval $(thefuck --alias)
eval $(thefuck --alias fu)
eval $(thefuck --alias uf)

psaux() {
    ps aux | grep "$1" | grep -v grep
}

create-malexandre-app() {
    create-react-app "$1" --scripts-version malexandre-react-scripts
}


prompt_command() {
    history -a
}

PROMPT_COMMAND="$PROMPT_COMMAND; prompt_command"
PS1="\[\033[01;34m\]\$(date +%H:%M:%S) \[\033[01;32m\]\u \[\033[01;31m\]\w\[\033[1;33m\]\$(gogit-prompt) \[\033[01;34m\]\$\[\033[00m\] "
