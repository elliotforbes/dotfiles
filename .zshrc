# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/elliotforbes/.oh-my-zsh"

export GPG_TTY=$(tty)

cp .gitconfig ~/.gitconfig

if ! test -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi
if ! test -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# https://github.com/egorlem/ultima.zsh-theme
ZSH_THEME="ultima"
plugins=(git brew golang gh terraform themes zsh-autosuggestions zsh-syntax-highlighting)

# Some sensible setup
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:/Users/elliotforbes/Projects/dotfiles/scripts

# removes duplicate entries from $PATH
typeset -U PATH path

export NVM_DIR="$HOME/.nvm"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Sets up ssh signing for git
git config gpg.format ssh
git config user.signingkey ~/.ssh/id_rsa.pub


# Installs the cascadia code font
curl https://github.com/microsoft/cascadia-code/releases/download/v2111.01/CascadiaCode-2111.01.zip -o cascadia.zip

# brew install httpie

source $ZSH/oh-my-zsh.sh
