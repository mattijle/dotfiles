set TERM='xterm-256color'
export TERM
export WORKON_HOME=~/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=~/virtualenvs

alias set_title="echo -ne '\033]0;Matin Jutut Linode \007'"
set_title
# Set up the prompt

autoload -Uz promptinit
promptinit
prompt walters

#Using emacs-like keybindings even though my editor of choice is Vim
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


#--------------------------------------------------------------------------------
#Aliases
#--------------------------------------------------------------------------------
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias tmatt='tmux attach -d -t general'
alias tchat='tmux attach -d -t chat'
alias ..= 'cd ..'
alias ...= 'cd ../..'
alias --  -= 'cd -'
