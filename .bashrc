# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

launch() { "$@" &> /dev/null & }

alias clip1='head -1 | kitty +kitten clipboard'
alias clip='kitty +kitten clipboard'
alias clipc='echo -n "" | kitty +kitten clipboard'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias cp='cp -iv'
alias icat='kitty +kitten icat'
alias im='uim-fep'
alias ls='ls --color=auto'
alias rm='rm -i'
alias mv='mv -iv'
alias vim='nvim'
#alias vimj='uim-fep -C white:black -e nvim -c startinsert -c "set mouse=a"'
