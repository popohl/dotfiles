# Path stuff...
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local:/usr/local/sbin:$PATH:/Users/paulohl/Documents/_Perso/codage/scripts"

#colors enabling
autoload -U colors && colors

#Autocompletion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Set vi mode
set -o vi

#Change prompt
PS1="%1~ 💻 > "

#Cool aliases
alias please=sudo
alias brewpdate='brew update && brew upgrade && brew upgrade --cask && brew cleanup'
alias norminette="/Users/paulohl/Documents/_Perso/codage/scripts/norminette/norminette.rb"
alias vim='nvim'
alias gcw='gcc -Wall -Wextra'
alias gcx='gcc -Wall -Wextra -fsanitize=address -g3'
alias music-dl='youtube-dl --no-check-certificate -x --audio-format mp3'
alias config='git --git-dir=$HOME/dotfiles --work-tree=$HOME'
eval $(awk '{print "alias " $1 "=\"cd " $2 " && ls\" "}' /Users/paulohl/Documents/_Perso/codage/scripts/folders.config | tr "\"" "'")

#zsh syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR=nvim
CFGNVIM="$HOME/.config/nvim/init.vim"
