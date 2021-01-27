# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify

zstyle :compinstall filename '/Users/akhmad/.zshrc'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

autoload -Uz compinit
compinit
# end lines


source <(antibody init)
antibody bundle < $HOME/.zsh_plugins

export LC_ALL=en_US.UTF-8
export GOPATH=$HOME/Workspaces/go
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/sbin:/usr/local/sbin:$PATH

export EDITOR=nvim

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
