# Lines configured by zsh-newuser-install
export ZDOTDIR=$HOME/.config/zsh
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch interactive_comments
setopt menucomplete # compeletion 
unsetopt beep
bindkey -e
autoload -Uz colors && colors
# End of lines configured by zsh-newuser-install


# The following lines were added by compinstall
zstyle :compinstall filename '/home/msaad/.zshrc'
autoload -Uz compinit ; compinit
zstyle ':completion:*' menu select
_comp_options+=(globdots)
# End of lines added by compinstall

# Useful Functions
source "$ZDOTDIR/zsh-functions"
zsh_add_file "zsh-aliases"
zsh_add_plugin "zsh-syntax-highlighting/zsh-syntax-highlighting"
zsh_add_file "zsh-exports"
#PS1="%B%{$fg[cyan]%}%c%{$fg[magenta]%} $%{$reset_color%}%b "
PROMPT="%B%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$fg[cyan]%}%c%{$reset_color%} "

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 25% --layout=reverse --border --extended'
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude .git"
export FZF_COMPLETION_TRIGGER='`'
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND -t d"
