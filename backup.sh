#!/bin/sh

[[ -z ~/Dotfiles ]] && mkdir ~/Dotfiles

[[ -z ~/Dotfiles/qtile ]] && cp -r ~/.config/qtile ~/Dotfiles/qtile
[[ -z ~/Dotfiles/alacritty ]] && cp -r ~/.config/alacritty ~/Dotfiles/alacritty
[[ -z ~/Dotfiles/suckless ]] && cp -r ~/.config/suckless ~/Dotfiles/suckless
[[ -z ~/Dotfiles/dm ]] && cp -r ~/.config/dm ~/Dotfiles/dm
[[ -z ~/Dotfiles/dwm ]] && cp -r ~/.config/dwm ~/Dotfiles/dwm && cd ~/Dotfiles/dwm && rm -rf .git
[[ -z ~/Dotfiles/shell ]] && cp -r ~/.config/shell ~/Dotfiles/shell
[[ -z ~/Dotfiles/zsh ]] && cp -r ~/.config/zsh ~/Dotfiles/zsh
[[ -z ~/Dotfiles/x11 ]] && cp -r ~/.config/x11 ~/Dotfiles/x11
[[ -z ~/Dotfiles/scripts ]] && cp -r ~/.local/bin/scripts ~/Dotfiles/scripts

[[ -z .git ]] && git init . && git remote add origin git@github.com:mislavzanic/Dotfiles.git
git add .
git commit -m"backup"
git push origin master