#!/bin/bash

set -eou pipefail

installTools() {
     brew install bat
     brew install exa
     brew install tokei
     brew install httpie
     brew install golangci-lint
     brew install gh
     brew install fzf
     brew install postgresql
     brew install hashicorp/tap/terraform
}

setupVim() {
     echo "syntax on" >> ~/.vimrc
}

main() {
    installTools
    setupVim
}

main
