#!/usr/bin/env zsh

# completion
autoload -U compini
compinit

# makes color constants available
autoload -U colors
colors

# enabled colored output form ls, etc
export CLICOLOR=1

# history settings
etopt histignoredups
HISTFILE=~/.zsh_history
HISTSIZE=4096
SAVEHIST=4096

# PATH
env_dir() {
  var=$1
  val=$2
  eval old=\$$var
  export $var=$val:$var
}
env_dir PATH ~/.rvm/bin
env_dir PATH ~/.bin
env_dir PATH ~/.bin.local
env_dir PATH .git/safe/../../bin

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
