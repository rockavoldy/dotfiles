# antigen
source $HOME/.antigen/antigen.zsh
antigen init $HOME/.antigenrc

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

# User configuration
export EDITOR='nvim'

# alias
alias scli="sequelize-cli"
alias vim="nvim"
alias edit="nvim"
alias findnodemodules="find . -name 'node_modules' -type d -prune -print | xargs du -chs"
alias delnodemodules="find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \\;"
