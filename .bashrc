#!/usr/bin/env bash

[[ $- = *i* ]] || return

stty -ixon

shopt -pq login_shell || \. /etc/profile
#shopt -pq login_shell || for i in /etc/profile.d/*; do \. $i; done

shopt -s autocd
shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dirspell
shopt -s dotglob
shopt -s globstar
shopt -s histappend
shopt -s lithist
shopt -s nocaseglob

for i in ~/.bashrc.d/*; do \. $i; done

###

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:/home/me/.git-semantic-commits:$PATH

export DENO_INSTALL="/home/me/.local"
export PATH="$DENO_INSTALL/bin:$PATH"

[ -f "/home/me/.ghcup/env" ] && source "/home/me/.ghcup/env" # ghcup-env
source "$HOME/.cargo/env"

export PATH=$PATH:/usr/local/go/bin
