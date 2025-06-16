# Install command line tools from xcode
xcode-select --install

# installs homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install devtools
brew install neovim tmux alacritty docker docker-compose htop wget go koekeishiya/formulae/skhd koekeishiya/formulae/yabai fzf
brew tap FelixKratz/formulae
brew install borders
brew install --cask font-hack-nerd-font

# Install omz
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# create .config dir
mkdir $HOME/.config
mkdir $HOME/.local/bin

# install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# set links
DOTFILE_PATH=$HOME/.dotfiles
ln -s $DOTFILE_PATH/.zshrc ~/.zshrc
ln -s $DOTFILE_PATH/tmux/tmux-sessionizer ~/.local/bin/tmux-sessionizer
ln -s $DOTFILE_PATH/nvim ~/.config/nvim
ln -s $DOTFILE_PATH/skhd ~/.config/skhd
ln -s $DOTFILE_PATH/yabai ~/.config/yabai
ln -s $DOTFILE_PATH/tmux ~/.config/tmux
ln -s $DOTFILE_PATH/borders ~/.config/borders
ln -s $DOTFILE_PATH/alacritty ~/.config/alacritty

# enable yabai and skhd
yabai --start-service
skhd --start-service
