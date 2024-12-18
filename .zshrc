# 環境変数
export LANG=ja_JP.UTF-8

# コマンド履歴の設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups
setopt auto_pushd
setopt pushd_ignore_dups
setopt print_eight_bit

# zsh-completions(補完機能)の設定
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi
autoload -U compinit
compinit -uh

# aliasの設定
if [[ $(command -v exa) ]]; then
    alias ls='exa'
    alias ll='exa -la'
    alias lt='exa -Ta -I "node_modules|.git|.cache"'
else
    alias ls='ls --color=auto'
    alias ll='ls -la'
    alias lt='tree -I "node_modules|.git|.cache"'
fi

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias his='history | grep'
alias grep='grep --color=auto'
alias cat='bat --theme="Visual Studio Dark+"'
alias reload='source ~/dotfiles/.zshrc'
alias mkdir='mkdir -p'

# syntax highlight
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# auto suggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/albero/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/albero/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/albero/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/albero/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# starship
eval "$(starship init zsh)"

# krew
export PATH=$PATH:$HOME/.krew/bin

# progate
export PATH=$HOME/.progate/bin:$PATH

# Terraform
export PATH=$PATH:$HOME/.tfenv/bin

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
