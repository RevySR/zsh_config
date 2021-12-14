#!/usr/bin/env zsh

function update_zsh_config() {
  # $MY_ZSH/update.zsh
#  CPWD=$(pwd)
#  cd $MY_ZSH && git pull && git submodule update --remote
#  cd $CPWD
#  exec zsh
}

#alias uzc=update_zsh_config

function unset_proxy() {
  unset http_proxy
  unset https_proxy
  unset ftp_proxy
  unset all_proxy

  unset HTTP_PROXY
  unset HTTPS_PROXY
  unset FTP_PROXY
  unset ALL_PROXY
  echo "Remove http/https/ftp/all proxy"
}

alias up=unset_proxy
