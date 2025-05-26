# Lines configured by zsh-newuser-install
setopt autocd extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gramms/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

[[ -f "$ZDOTDIR/alias" || -L "$ZDOTDIR/alias" ]] && source "$ZDOTDIR/alias"
