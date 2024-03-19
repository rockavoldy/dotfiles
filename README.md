# rockavoldy's dotfiles

## How-to
### Install brew package manager
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install `zsh-autosuggestions` and `zsh-syntax-highlighting`
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Install FiraCode Mono Nerd Font
```sh
brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font
```

### Install pyenv
```sh
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
```

### Install gobrew
```sh
curl -sLk https://raw.githubusercontent.com/kevincobain2000/gobrew/master/git.io.sh | sh
```

### Get SSH pubkey from github
```sh
curl -fsSL https://github.com/rockavoldy.keys > authorized_keys
```

### Lock and unlock the Dock on macOS
1. Lock the dock
    ```sh
    defaults write com.apple.Dock position-immutable -bool false; killall Dock
    ```
2. Unlock the dock
    ```sh
    defaults write com.apple.Dock size-immutable -bool true; killall Dock
    ```
