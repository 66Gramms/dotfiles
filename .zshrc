### Custom Configurations

setopt autocd

# Default directory for screenshots
export PATH="$PATH:~/.dotnet/tools"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light romkatv/powerlevel10k

PURE_POWER_MODE=modern
source ~/.config/everforest-dark.zsh

zinit snippet https://github.com/sainnhe/dotfiles/raw/master/.zsh-theme/everforest-dark.zsh
### End of Zinit's installer chunk

HISTFILE=~/.zsh_history  # Path to history file
HISTSIZE=100           # Number of commands stored in memory
SAVEHIST=100           # Number of commands saved to file

setopt append_history     # Append new commands to history file instead of overwriting
setopt inc_append_history # Add commands to history immediately
setopt share_history      # Share history across multiple terminals



### Custom Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias icat='kitten icat'
alias search='grep -r'
alias vim='nvim'
alias code='code --enable-features=UseOzonePlatform --ozone-platform=wayland'
