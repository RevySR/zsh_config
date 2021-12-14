# import 

source ${0:h:A}/func.zsh
source ${0:h:A}/common.zsh

# Gentoo Linux
if [[ $(uname -s) == "Linux" && $(lsb_release -si) == "Gentoo" ]] {
  umask 022

  if [ -e /etc/profile.env ] ; then
	  . /etc/profile.env
  fi

  for sh in /etc/profile.d/*.sh ; do
    [ -r "$sh" ] && . "$sh"
  done
  unset sh
}

# Deepin_Dev
if [[ $(uname -s) == "Linux" && $(lsb_release -si) == "Deepin" ]] {
  source ${0:h:A}/debian.zsh
  source ${0:h:A}/deepin.zsh
}

if [[ $(uname -s) == "Linux" && $(lsb_release -si) == "Debian" ]] {
  source ${0:h:A}/debian.zsh
}
