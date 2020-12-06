# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/riley/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Custom

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PS1="%B%(!.%F{red}%n%f.%F{green}%n%f)@%d:->%b "

export EDITOR=nvim

# Path
export PATH=$PATH:~/.cargo/bin
