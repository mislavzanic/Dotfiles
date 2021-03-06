#  _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|

bindkey -v

export ZSH="/home/mislav/.config/.oh-my-zsh"

ZSH_THEME="aussiegeek"

plugins=(git zsh-autosuggestions vi-mode)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"

alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

alias cp='cp -iv'
alias mv='mv -iv'

# pacman and yay
alias p="sudo pacman"
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias parsua='paru -Sua --noconfirm'             # update only AUR pkgs (paru)
alias parsyu='paru -Syu --noconfirm'             # update standard pkgs and AUR pkgs (paru)
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'  # remove orphaned packages

alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'  # 'status' is protected name so using 'stat' instead
alias tag='git tag'
alias newtag='git tag -a'
alias merge='git merge'

alias yta='youtube-dl -x -f bestaudio/best'
alias tsm='transmission-remote'

alias jctl="journalctl -p 3 -xb"

alias pmf="cd ~/.local/pmf"
alias scripts="cd ~/.local/bin/scripts"
alias zdt="cd ~/.config/zsh"
alias dwmc="cd ~/.config/dwm"

se() { find ~/.local/bin/scripts ~/.config | fzf | xargs -r $EDITOR ;}

# Blinking underline as cursor
# echo -e -n "\x1b[\x33 q"

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
# eval "$(starship init zsh)"
                        
