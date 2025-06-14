# Install command line tools from xcode
xcode-select --install

# installs homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Post-intall setup for homebrew
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install devtools
brew install neovim tmux alacritty docker docker-compose htop wget go koekeishiya/formulae/skhd koekeishiya/formulae/yabai
brew tap FelixKratz/formulae
brew install borders

# create .config dir
mkdir $HOME/.config

# set links
DOTFILE_PATH=$HOME/.dotfiles
ln -s $DOTFILE_PATH/.zshrc ~/.zshrc
ln -s $DOTFILE_PATH/tmux/tmux-sessionizer ~/.local/bin/tmux-sessionizer
ln -s $DOTFILE_PATH/nvim ~/.config/nvim
ln -s $DOTFILE_PATH/nvim-kickstart ~/.config/nvim-kickstart
ln -s $DOTFILE_PATH/skhd ~/.config/skhd
ln -s $DOTFILE_PATH/yabai ~/.config/yabai
ln -s $DOTFILE_PATH/tmux ~/.config/tmux
ln -s $DOTFILE_PATH/borders ~/.config/borders
ln -s $DOTFILE_PATH/alacritty ~/.config/alacritty

# enable yabai and skhd
yabai --start-service
skhd --start-service
