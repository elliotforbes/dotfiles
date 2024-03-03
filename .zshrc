# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/elliotforbes/.oh-my-zsh"

cp .gitconfig ~/.gitconfig

# https://github.com/egorlem/ultima.zsh-theme
ZSH_THEME="ultima"
plugins=(git)

# Some sensible setup
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:/Users/elliotforbes/Projects/dotfiles/scripts

# removes duplicate entries from $PATH
typeset -U PATH path

export NVM_DIR="$HOME/.nvm"

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

