#!/usr/bin/env bash

# Install Xcode
# Install Homebrew
# Install NVM
# Install Yarn
# Install Gulp
# Install Bower
# Install Linters
# Install Serverless
# Install Create React App
# Install Expo
# Install eas
# Install AWS Amplify
# Set OS defaults
# Install Desktop Applications
# Setup Projects Folder
# Install Oh-My-Zsh

# Ask for the administrator password upfront
sudo -v

echo "------------------------------"
echo "Initializing Development Workspace [×]"

# Update OS
echo "Updating OSX.  If this requires a restart, run the script again."
# # Install all available updates
# sudo softwareupdate -ia --verbose
# # Install only recommended available updates
sudo softwareupdate -ir --verbose

# Install Xcode Tools (Git)

echo "Installing Xcode Command Line Tools..."
# Install Xcode command line tools
xcode-select --install


# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
# Make sure we’re using the latest Homebrew.
brew update


# # Install Node & Global Packages
# echo "Installing Node..."
# brew install node

echo "Installing NVM..."
brew install nvm
mkdir ~/.nvm 
echo -n 'export NVM_DIR=~/.nvm source $(brew --prefix nvm)/nvm.sh' >> ~/.zshrc

nvm install 14
nvm use 14

echo "Installing Yarn..."
brew install yarn


# echo "Installing Gulp..."
# npm install -g gulp-cli

# echo "Installing Bower..."
# npm install -g bower

# Install Linters
echo "Installing Linters..."
npm install -g stylelint
npm install -g eslint
npm install -g prettier
npm install -g -D stylelint-scss
npm install -g -D stylelint-order
npm install -g -D eslint-config-airbnb
npm install -g -D eslint-config-prettier
npm install -g -D eslint-config-airbnb-base
npm install -g -D eslint-plugin-prettier
npm install -g -D eslint-plugin-import 
npm install -g -D eslint-plugin-jsx-a11y 
npm install -g -D eslint-plugin-react 

echo "Installing Serverless..."
npm install -g serverless

echo "Installing Create React App..."
npm install -g create-react-app

echo "Installing Expo cli..."
npm install -g expo-cli

echo "Installing eas cli..."
npm install -g eas-cli

echo "Installing Amplify cli..."
npm install -g @aws-amplify/cli

# Set OS Defaults
echo "Setting OS Defaults..."
# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Install Desktop Applications
echo "Installing iTerm2..."
brew install --cask iterm2

echo "Installing Google Chrome..."
brew install --cask google-chrome

echo "Installing Microsoft Teams..."
brew install --cask microsoft-teams

echo "Installing Discord..."
brew install --cask discord

echo "Installing Slack..."
brew install --cask slack

echo "Installing Figma..."
brew install --cask figma

echo "Installing Android Studio..."
brew install --cask android-studio

echo "Installing Android Studio adb tools..."
brew install --cask android-platform-tools

echo "Installing Github..."
brew install --cask github

echo "Installing Docker..."
brew install --cask docker

echo "Installing AWS CLI..."
brew install awscli

read -p "Would you like to download VSCode? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Installing VSCode..."
  brew install --cask visual-studio-code
fi;

read -p "Would you like to download Atom? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Installing Atom..."
  brew install --cask atom
fi;

# Install Oh My Zsh
echo "Installing Oh My Zsh (Z shell)..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


echo "Development Workspace Ready [✔]"
echo ""
echo "Restart your computer to ensure all updates take effect"
echo "------------------------------"