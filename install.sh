#!/bin/bash

set -eou pipefail

installTools() {
     brew install bat
     brew install exa
     brew install tokei
}

setupVim() {
     echo "syntax on" >> ~/.vimrc
}

main() {
    installTools
    setupVim
}

main
