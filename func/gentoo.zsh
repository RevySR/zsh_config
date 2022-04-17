#!/usr/bin/env zsh
function gen-update-index() {
  sudo eix-sync -a
}

alias gui=gen-update-index

function gen-update() {
  sudo emerge -avuD --keep-going @world
}

alias gu=gen-update

function gen-rebuild() {
  sudo emerge -avej --update --keep-going @world
}

alias gr=gen-rebuild

function gen-kernel-update() {
  kernel_index=$(eselect kernel list | grep linux | tail -n 1 | awk '{print $1;}' | tr '[]' '  ' | awk '{print $1;}')
  sudo eselect kernel set $kernel_index
  sudo genkernel all --kernel-config=/root/newconfig
}

alias gku=gen-kernel-update
