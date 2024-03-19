# Path settings
export PATH=$HOME/bin:/opt/homebrew/sbin:$PATH
export PATH=$HOME/bin:/opt/homebrew/bin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bin:/usr/local/sbin:$PATH
export PATH=$HOME/bin:/$HOME/.bun/bin:$PATH
export PATH="$HOME/.gobrew/current/bin:$HOME/.gobrew/bin:$PATH"
export GOROOT="$HOME/.gobrew/current/go"

# Go path settings
export GOPATH="$(go env GOPATH)"
export GOBIN="$GOPATH/bin"
export PATH=$HOME/bin:$GOBIN:$PATH

# Rust path settings
export CARGO_HOME="$HOME/.cargo"
export PATH=$HOME/bin:$CARGO_HOME/bin:$PATH
source $CARGO_HOME/env

# omz section
# path to omz repository
export ZSH="$HOME/.oh-my-zsh"
# zsh theme
ZSH_THEME="robbyrussell"
# zsh plugins
plugins=(git brew docker zsh-autosuggestions zsh-syntax-highlighting)

zstyle ':omz:update' mode auto

source $ZSH/oh-my-zsh.sh
# end of omz section

# pyenv section
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
if [ $commands[pyenv] ]; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# alias things
alias rm="rm -I"
alias cat="bat"
alias "rm -rf"="rm -rI"
autoload -U compinit; compinit

HOMEBREW_NO_AUTO_UPDATE=1

# completion things
# Load the kubectl completion code for zsh[1] into the current shell
source <(kubectl completion zsh)
# Set the kubectl completion code for zsh[1] to autoload on startup
kubectl completion zsh > "${fpath[1]}/_kubectl"

if [ $commands[kamel] ]; then
  source <(kamel completion zsh)
fi


if [ $commands[minikube] ]; then
  source <(minikube completion zsh)
fi


# Created by `pipx` on 2024-03-19 12:18:00
export PATH="$PATH:/Users/akhmad/.local/bin"
