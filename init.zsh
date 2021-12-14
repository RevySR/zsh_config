#!/usr/bin/env zsh

set -euo pipefail

PWD=$(cd "$(dirname "$0")" && pwd -P)

rm -f $HOME/.zshrc && ln -s $PWD/zshrc $HOME/.zshrc
