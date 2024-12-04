PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"
# PATH="/usr/local/opt/bison/bin:$PATH"
export PATH
source ~/.bash_profile

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---- Eza (better ls) and  ---- Zoxide (better cd) ---- -----
eval "$(zoxide init zsh)"
alias ls="eza --icons=always"
alias lvim="/Users/erbivore/.local/bin/lvim"
# ---- Zoxide (better cd) ----


alias cd="z"

# This alias reloads this file
alias reload_profile='. ~/.bash_profile'
alias bison="$(brew --prefix bison)/bin/bison"
export PATH="$(brew --prefix bison)/bin:$PATH"
