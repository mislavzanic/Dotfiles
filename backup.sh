#!/bin/sh

[[ -z ~/Dotfiles ]] && mkdir ~/Dotfiles

[[ -z ~/Dotfiles/qtile ]] && [[ -z ~/.config/qtile ]] || cp -r ~/.config/qtile ~/Dotfiles/qtile
[[ -z ~/Dotfiles/alacritty ]] && [[ -z ~/.config/alacritty ]] || cp -r ~/.config/alacritty ~/Dotfiles/alacritty
[[ -z ~/Dotfiles/suckless ]] && [[ -z ~/.config/suckless ]] || cp -r ~/.config/suckless ~/Dotfiles/suckless
[[ -z ~/Dotfiles/dm ]] && [[ -z ~/.config/dm ]] || cp -r ~/.config/dm ~/Dotfiles/dm
[[ -z ~/Dotfiles/dwm ]] && [[ -z ~/.config/dwm ]] || cp -r ~/.config/dwm ~/Dotfiles/dwm && cd ~/Dotfiles/dwm && rm -rf .git
[[ -z ~/Dotfiles/shell ]] && [[ -z ~/.config/shell ]] || cp -r ~/.config/shell ~/Dotfiles/shell
[[ -z ~/Dotfiles/zsh ]] && [[ -z ~/.config/zsh ]] || cp -r ~/.config/zsh ~/Dotfiles/zsh
[[ -z ~/Dotfiles/x11 ]] && [[ -z ~/.config/x11 ]] || cp -r ~/.config/x11 ~/Dotfiles/x11
[[ -z ~/Dotfiles/scripts ]] && [[ -z ~/.local/bin/scripts ]] || cp -r ~/.local/bin/scripts ~/Dotfiles/scripts

[[ -z .git ]] && git init . && git remote add origin git@github.com:mislavzanic/Dotfiles.git
git add .
git commit -m"backup"
git push origin master
