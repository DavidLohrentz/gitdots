#!/usr/bin/zsh
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable colors and change prompt:
autoload -U colors && colors

# 
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob
# vi mode
bindkey -v
#
zstyle :compinstall filename '/home/david/.config/zsh/.zshrc'

autoload -Uz compinit
compinit


#
# autocompletion with arrow-key driven interface
zstyle ':completion:*' menu select
# Enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# Load zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
# Suggest aliases for commands
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh 2>/dev/null
# make sure this goes after syntax-highlighting
source $ZDOTDIR/zsh-history-substring-search/zsh-history-substring-search.zsh
# up arrow = ^[[A
bindkey '^[[A' history-substring-search-up
# down arrow = ^[[B
bindkey '^[[B' history-substring-search-down
# Source configs
for f in ~/.config/shellconfig/*; do source "$f"; done

# git prompt on right in DarkRed(88)
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info  }
precmd_functions+=( precmd_vcs_info  )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{88}(%b)%r%f'
zstyle ':vcs_info:*' enable git
# left hand prompt
PROMPT='%F{13}%n%f'  # fuchsia user name
PROMPT+='@'
PROMPT+="%F{82}${${(%):-%m}#}%f" # chartreuse host name
PROMPT+=" "
PROMPT+="%B%F{57}%2~ %f" # bold BlueViolet last 2 components of working directory
PROMPT+='%F{30}%(t.punkinhead-ass-kicking top of the hour!.%D{%L:%M}) %f%# ' # turqoise prompt
