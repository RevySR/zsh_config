export MY_ZSH=$HOME/.zsh_config
#zmodload zsh/zprof
source $MY_ZSH/.zinit/zinit.zsh

if [[ $(uname -s) == 'Darwin' && $(uname -m) == 'arm64' ]] {
  eval $(/opt/homebrew/bin/brew shellenv)
}

ZSH_THEME="ys"

zinit snippet OMZL::git.zsh
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::theme-and-appearance.zsh
zinit snippet OMZT::ys.zsh-theme

# plugins

zinit light zdharma-continuum/history-search-multi-word
#zinit light zsh-users/zsh-autosuggestions
#zinit light zsh-users/zsh-syntax-highlighting
#zinit light zdharma-continuum/fast-syntax-highlighting
#zinit light zsh-users/zsh-completions

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

# sudo
zinit snippet OMZP::sudo/sudo.plugin.zsh
zinit snippet OMZP::ssh-agent/ssh-agent.plugin.zsh

# svn
zinit snippet OMZP::svn/svn.plugin.zsh

# tmux
zinit snippet OMZP::tmux/tmux.plugin.zsh

# pyenv
command -v pyenv >/dev/null && {
	export PYENV_ROOT="$HOME/.pyenv"
	eval "$(pyenv init -)"
	zinit snippet OMZP::pyenv/pyenv.plugin.zsh
}

if [[ $(uname -s) == "Darwin" ]] {
  # macos plugins
  zinit ice svn
  zinit snippet OMZP::macos
  # brew
  zinit snippet OMZP::brew/brew.plugin.zsh
}

source $MY_ZSH/func/import.zsh

if [ -f $HOME/.local.zsh ]; then
  source $HOME/.local.zsh
fi

if [ -f $HOME/local.zsh ]; then
  source $HOME/local.zsh
fi

# load b4 patch tool
if [ -f $MY_ZSH/tools/b4/b4.sh ]; then
  export SCRIPT_TOP=$MY_ZSH/tools/b4/
  alias b4="$MY_ZSH/tools/b4_fix.sh"
fi

# fix debian sbin
export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
