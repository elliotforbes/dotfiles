#!/bin/bash

set -eou pipefail

installTools() {
     brew install bat
     brew install exa
     brew install tokei
}

main() {
    installTools
}

main