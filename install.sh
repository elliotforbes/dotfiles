#!/bin/bash

set -eou pipefail

installTools() {
     brew install bat
}

main() {
    installTools
}

main