# Path settings
export PATH=$HOME/bin:/opt/homebrew/sbin:$PATH
export PATH=$HOME/bin:/opt/homebrew/bin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bin:/usr/local/sbin:$PATH

# gobrew
if [ $commands[gobrew] ]; then
  export PATH="$HOME/.gobrew/current/bin:$HOME/.gobrew/bin:$PATH"
  export GOROOT="$HOME/.gobrew/current/go"
fi

# go path
if [ $commands[go] ]; then
  export GOPATH="$(go env GOPATH)"
  export GOBIN="$GOPATH/bin"
  export PATH=$HOME/bin:$GOBIN:$PATH
fi

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
if [ $commands[pyenv] ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# alias things
alias rm="echo Delete manually via Finder, or use the full path '$(which rm)'"
alias cat="bat"

autoload -U compinit; compinit

# completion things
k3d completion zsh > "${fpath[1]}/_k3d"

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
