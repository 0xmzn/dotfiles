
# Enable Colors 
autoload -U colors && colors

# My Prompt. DUH!
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000

# Auto cd when writing Dir name
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/msaad/.zshrc'
# End of lines added by compinstall

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Enable moving with ctrl + arrow 
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word


# Start colorscript on bash startup
/home/msaad/Scripts/BashColorScript
#################################################
# Aliases
alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
# Exit Bash.
alias xx="exit"

# Compile and Run main.cpp
alias r="g++ main.cpp -o main && ./main"
# Better Version to Compile and Run main.cpp
alias run="/home/msaad/Scripts/run"


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

# Open Ranger
alias fm="ranger"

# Check Internet Connection by binging Google
alias gg="ping google.com"

# Open i3wm Config file in VIM
alias cfg="vim /home/msaad/.config/i3/config"

# Prettier grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Ask Me to Confirm
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Source my .bashrc
alias sz='source /home/msaad/.zshrc'

# Open my Bashrc with VIM
alias zrc="vim /home/msaad/.zshrc"


# Zsh highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


