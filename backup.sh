#!/bin/sh

[[ -z ~/Dotfiles ]] && mkdir ~/Dotfiles

[[ ~/Dotfiles/suckless ]] && cp -r ~/.config/suckless ~/Dotfiles/suckless
[[ -z ~/Dotfiles/shell ]] && cp -r ~/.config/shell ~/Dotfiles/shell
[[ -z ~/Dotfiles/zsh ]] && cp -r ~/.config/zsh ~/Dotfiles/zsh
[[ -z ~/Dotfiles/x11 ]] && cp -r ~/.config/x11 ~/Dotfiles/x11

[[ -z .git ]] && git init . && git remote add origin git@github.com:mislavzanic/Dotfiles.git
git add .
git commit -m"backup"
git push origin master
