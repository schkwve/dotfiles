export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.config/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=nvim
export VISUAL=nvim

ZSH_THEME="common"

plugins=(git
        fzf-tab
        archlinux
        zsh-syntax-highlighting
        colorize        
        sudo    
        command-not-found)

source $ZSH/oh-my-zsh.sh

# Is having this many aliases even needed?
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias l='ls --color --group-directories-first'
alias la='ls --color --group-directories-first -a'
alias ll='ls --color --group-directories-first -al'

alias r='ranger'
alias f='fzf'
alias ss='screenshot'
