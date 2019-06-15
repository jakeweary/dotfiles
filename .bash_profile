#!/usr/bin/env bash

[[ -e ~/.profile ]] && . ~/.profile
[[ -e ~/.bashrc  ]] && . ~/.bashrc

###

export PATH="$HOME/.cargo/bin:$PATH"
