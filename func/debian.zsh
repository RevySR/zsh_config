#!/usr/bin/env zsh

function get_source() {
  cd source
  apt source $@
  cd -
}
alias gs=get_source

function build() {
  sudo bash build.sh $@
}
alias b=build

function import_package() {
  reprepro --ignore=wrongdistribution includedeb apricot incomming/*.deb
}
alias i=import_package
