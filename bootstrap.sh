# Install command line tools from xcode
xcode-select --install

# installs homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Post-intall setup for homebrew
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install devtools
brew install neovim tmux alacritty docker docker-compose htop wget go koekeishiya/formulae/skhd koekeishiya/formulae/yabai

# create .config dir
mkdir $HOME/.config
mkdir $HOME/.config/yabai
mkdir $HOME/.config/skhd 

# set links
DOTFILE_PATH=$HOME/.dotfiles

ln -s $DOTFILE_PATH/.zshrc ~/.zshrc
ln -s $DOTFILE_PATH/nvim ~/.config/nvim
ln -s $DOTFILE_PATH/yabai/yabairc ~/.config/yabai/yabairc

# enable yabai and skhd
yabai --start-service
skhd --start-service
