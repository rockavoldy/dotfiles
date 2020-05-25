# Created by newuser for 5.8
source $HOME/.antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle yarn
antigen bundle zsh-users/zsh-autosuggestions

antigen theme dracula/zsh
antigen apply

export LC_ALL=en_US.UTF-8
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/sbin:/usr/local/sbin:$PATH
export PATH=$HOME/bin:~/.composer/vendor/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

