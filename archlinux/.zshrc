# Enable Colors
autoload -U colors && colors

# My Prompt. DUH!
PS1="%B%{$fg[blue]%}%c%{$fg[red]%} >%{$reset_color%}%b "

# History
HISTFILE=~/.cache/zsh/history
HISTSIZE=100000
SAVEHIST=100000


export HOME=/home/msaad
export PWD=/home/msaad


# Auto cd when writing Dir name
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/msaad/.zshrc'
# End of lines added by compinstall


# Search History by up and down arrows
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down


# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Enable moving with ctrl + arrow
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Download Songs with metadata
song () {
    youtube-dl --ignore-errors -f bestaudio --add-metadata --extract-audio --audio-format mp3 --audio-quality 0 $1
}

pdf(){
    zathura $1 & disown
}
# Start colorscript on bash startup
# /home/msaad/playground/scripts/BashColorScript
#################################################
# Aliases
alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -CAF'   # show long listing but no hidden dotfiles except "."

# Compile and Run main.cpp
alias r="g++ main.cpp -o main && ./main"

# Pacman And Yay Aliases
alias S="sudo pacman -S"
alias yS="yay -S"
alias Ss="pacman -Ss"
alias ySs="yay -Ss"
alias Rns="sudo pacman -Rns"
alias yRns="yay -Rns"
alias Q="pacman -Q"
alias Qm="pacman -Qm"
alias Qn="pacman -Qn"
alias Syu="sudo pacman -Syyu"
alias ySyu="yay -Syu"
alias Sc="sudo pacman -Sc"
alias ySc="yay -Sc"
alias Si="pacman -Si"

# Check Internet Connection by binging Google
alias gg="ping google.com"

# Open i3wm Config file in nvim
alias cfg="nvim /home/msaad/.config/i3/config"

# Python to py
alias py="python3"

# Prettier grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Source my .bashrc
alias sz='source /home/msaad/.zshrc'

# Open my Bashrc with nvim
alias zrc="nvim /home/msaad/.zshrc"

# Open nvimrs cause I am too lazy
alias vrc="nvim /home/msaad/.config/nvim/init.vim"
alias vi="nvim"
alias vim="nvim"

# Zsh highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

vf() {
    vim $(fzf --preview 'bat --style=numbers --color=always --line-range :500 {}')
}
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
