#!/usr/bin/env zsh

# PATH
env_dir() {
  var=$1
  val=$2
  eval old=\$$var
  export $var=$val:$old
}
env_dir PATH ~/.rvm/bin
env_dir PATH ~/.bin
env_dir PATH ~/.bin.local
env_dir PATH .git/safe/../../bin

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
