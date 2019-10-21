# export things
# language LC
export LC_ALL=en_US.UTF-8

# bin PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/sbin:/usr/local/sbin:$PATH
export PATH=$HOME/bin:~/.composer/vendor/bin:$PATH

# export Android
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# nvm configuration
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# oh-my-zsh configuration
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
# plugins oh-my-zsh
plugins=(git yarn)

source $ZSH/oh-my-zsh.sh


# User configuration
export EDITOR='nvim'

# alias
alias scli="sequelize-cli"
alias edit="nvim"


