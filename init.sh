mkdir ~/.config

echo "start remove old link"
rm .zshrc
rm .clang-format
rm ~/.gitconfig
rm ~/.config/wayfire.ini
rm -rf ~/.config/alacritty
rm -rf ~/.config/kitty
rm -rf ~/.config/nvim
rm -rf ~/.config/ranger
rm -rf ~/.config/swaylock
rm -rf ~/.config/waybar
rm -rf ~/.config/wofi
rm -rf ~/.config/pip

echo "start create new link"
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.clang-format ~/.clang-format
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.config/wayfire.ini ~/.config/wayfire.ini
ln -s ~/dotfiles/.config/alacritty ~/.config/alacritty
ln -s ~/dotfiles/.config/kitty ~/.config/kitty
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/ranger ~/.config/ranger
ln -s ~/dotfiles/.config/swaylock ~/.config/swaylock
ln -s ~/dotfiles/.config/waybar ~/.config/waybar
ln -s ~/dotfiles/.config/wofi ~/.config/wofi
ln -s ~/dotfiles/.config/pip ~/.config/pip
