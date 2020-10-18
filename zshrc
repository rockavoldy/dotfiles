source $HOME/.antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle yarn
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme dracula/zsh
antigen apply

export LC_ALL=en_US.UTF-8
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/sbin:/usr/local/sbin:$PATH
export PATH=$HOME/bin:$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/bin:$HOME/.cargo/bin:$PATH
export PATH=$HOME/bin:$HOME/Library/Python/3.7/bin:$PATH
export PATH=$HOME/bin:$HOME/flutter/bin:$PATH
export PATH="/usr/local/opt/openjdk/bin:$PATH"

export GOPATH=$HOME/Workspaces/go
