# # installs homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#
# # install dev apps using homebrew
# brew bundle

# create .config dir
mkdir ~/.config

# set links
DIR=$(pwd)

ln -s $DIR/.zshrc ~/.zshrc
ln -s $DIR/nvim ~/.config/nvim
