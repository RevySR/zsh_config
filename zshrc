export MY_ZSH=$HOME/.zsh_config

source $MY_ZSH/.zinit/zinit.zsh

ZSH_THEME="ys"

zinit snippet OMZL::git.zsh
zinit snippet OMZL::theme-and-appearance.zsh
zinit snippet OMZT::ys.zsh-theme

# plugins

zinit light zdharma-continuum/history-search-multi-word
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions

# sudo
zinit snippet OMZP::sudo/sudo.plugin.zsh
# macos plugins
zinit ice svn
zinit snippet OMZP::macos
# brew
zinit snippet OMZP::brew/brew.plugin.zsh

source $MY_ZSH/func/import.zsh

if [ -f $HOME/.local.zsh ]; then
  source $HOME/.local.zsh
fi
