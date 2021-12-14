# import 

source ${0:h:A}/func.zsh
source ${0:h:A}/common.zsh

# Gentoo Linux
if [[ $(uname -s) == "Linux" && $(lsb_release -si) == "Gentoo" ]] {
  source /etc/profile
}

# Deepin_Dev
if [[ $(uname -s) == "Linux" && $(lsb_release -si) == "Deepin" ]] {
  source ${0:h:A}/debian.zsh
  source ${0:h:A}/deepin.zsh
}

if [[ $(uname -s) == "Linux" && $(lsb_release -si) == "Debian" ]] {
  source ${0:h:A}/debian.zsh
}
