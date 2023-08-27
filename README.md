# rockavoldy's dotfiles

## How-to
1. Install brew
    ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
2. Copy the content zshrc file to `$HOME/.zshrc`
3. Install `zsh-autosuggestions` and `zsh-syntax-highlighting`
    ```sh
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ```
4. Install FiraCode Mono Nerd Font
    ```sh
    brew tap homebrew/cask-fonts
    brew install font-fira-code-nerd-font
    ```
5. Import iTerm2 profile
6. Install pyenv
    ```sh
    curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
    ```
7. Install gobrew
    ```sh
    curl -sLk https://raw.githubusercontent.com/kevincobain2000/gobrew/master/git.io.sh | sh
    ```
