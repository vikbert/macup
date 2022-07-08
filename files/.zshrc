export PATH=$HOME/bin:/usr/local/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH="/Users/zhoux/.composer/vendor/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

#--------------------------------------------------
# python config 
#--------------------------------------------------
export DENO_INSTALL="/Users/zhoux/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

#--------------------------------------------------
# python config 
#--------------------------------------------------
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

eval "$(pyenv init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

#--------------------------------------------------
# zsh theme config 
#--------------------------------------------------
ZSH_THEME="robbyrussell"
# ZSH_THEME="random"

plugins=(git colored-man-pages brew macos zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.cloud_foundry.alias

#--------------------------------------------------
# theme: robbyrussell 
#--------------------------------------------------
local LC_ALL=""
local LC_CTYPE="en_US.UTF-8"
local PL_BRANCH_CHAR=$'\ue0a0'  # 
ZSH_THEME_GIT_PROMPT_PREFIX="%F{8}$PL_BRANCH_CHAR "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{8} ✔︎"

precmd() { print "" }
PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info) 
%F{8}❯ '
