#--------------------------------------------------
# HOME
#--------------------------------------------------
export LANG="en_US.UTF-8"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-22.jdk/Contents/Home"
export M2_HOME="/opt/homebrew/Cellar/maven/3.9.9"

#--------------------------------------------------
# PATH
#--------------------------------------------------
export PATH="/usr/local/bin:/usr/local/sbin:/Users/zhoux/bin:$PATH"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="~/.composer/vendor/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$JAVA_HOME/bin:$M2_HOME/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"

#--------------------------------------------------
# Brew
#--------------------------------------------------
export HOMEBREW_NO_AUTO_UPDATE=1

#--------------------------------------------------
# python
#--------------------------------------------------
eval "$(pyenv init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

## golang
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin

## Node
export NODE_OPTIONS=--openssl-legacy-provider
unset NODE_OPTIONS

#--------------------------------------------------
# pnpm
#--------------------------------------------------
export PNPM_HOME="/Users/zhoux/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

#--------------------------------------------------
# docker M1 Macbook
#--------------------------------------------------
docker() {
 if [[ `uname -m` == "arm64" ]] && [[ "$1" == "run" || "$1" == "build" ]]; then
    /usr/local/bin/docker "$1" --platform linux/amd64 "${@:2}"
  else
     /usr/local/bin/docker "$@"
  fi
}

#--------------------------------------------------
# myapctl
#--------------------------------------------------
autoload -U compinit; compinit

#--------------------------------------------------
# zsh theme config
#--------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git colored-man-pages brew macos zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.cloud_foundry.alias

#--------------------------------------------------
# theme: robbyrussell
#--------------------------------------------------
local LC_ALL=""
local LC_CTYPE="en_US.UTF-8"
local PL_BRANCH_CHAR=$'\ue0a0'  # show this icon for git branch 
ZSH_THEME_GIT_PROMPT_PREFIX="%F{8}$PL_BRANCH_CHAR "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{8} ✔︎"
precmd() { print "" }
PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)
%F{8}❯ '

#--------------------------------------------------
# fuck: auto-adjust CLI failure
# shortcut: $ fuck
#--------------------------------------------------
eval $(thefuck --alias)

#--------------------------------------------------
# zoxide: make bookmarks in the terminal
# shortcut: $ z my_dir
#--------------------------------------------------
eval "$(zoxide init zsh)"

#--------------------------------------------------
# fzf: fuzzy find
#--------------------------------------------------
eval "$(fzf --zsh)"
export FZF_DEFAULT_OPTS='--layout=reverse --border'
export BAT_THEME="Catppuccin Mocha"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/go@1.22/bin:$PATH"

. "$HOME/.local/bin/env"

# Task Master aliases added on 4/21/2025
alias tm='task-master'
alias taskmaster='task-master'

# Added by Windsurf
export PATH="/Users/zhoux/.codeium/windsurf/bin:$PATH"
