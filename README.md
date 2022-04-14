# Dev Configurator Instructions

1. Open terminal
2. Navigate terminal to this folder: `cd ~/path/dev-configurator`
3. Run command: `./init.sh` to start the install script


  **\*Note**: If unable to run script run the command: `chmod +x ~/path/dev-configurator/init.sh` to allow execution of the install script 


4. Let the process run. Near the end there are a few y/n (yes or no) prompts. Press key y/n to accept or not
5. After the script is finished you should be able to use the Mac search (top right) and see the following installed:
   - **\*Note**: If any of these are missing run the command in parenthesis\*
   - iTerm (`brew cask install iterm`)
   - Google Chrome (`brew cask install google-chrome`)
   - Microsoft Teams (`brew cask install microsoft-teams`)
   - Discord (`brew cask install discord`)
   - Slack (`brew cask install slack`)
   - Android Studio (`brew cask install android-studio`)
   - Android Platform Tools (`brew cask install android-platform-tools`)
   - Github (`brew cask install github`)
   - AWS CLI (`brew cask install awscli`)

   - [Optional] VS Code (`brew cask install visual-studio-code`)
   - [Optional] Atom (`brew cask install atom`)
6. Finally, you may need to restart your machine to ensure all updates take effect

### What's included

- Git command line tools (Xcode)
- Homebrew package manager
- NodeJS
- Yarn (global)
- Gulp (global)
- Bower (global)
- Multiple linter packages (global)
  - stylelint
  - eslint
  - prettier
  - stylelint-scss
  - stylelint-order
  - eslint-config-airbnb
  - eslint-config-prettier
  - eslint-config-airbnb-base
  - eslint-plugin-prettier
  - eslint-plugin-import
  - eslint-plugin-jsx-a11y
  - eslint-plugin-react
- Multiple cli packages (global)
  - Serverless
  - CRA (Create React App)
  - Expo
  - eas
  - Amplify (AWS)
- Multiple desktop applications
  - iTerm
  - Google Chrome
  - Microsoft Teams
  - Discord
  - Slack
  - Android Studio
  - Android Platform tools (adb)
  - Github
  - [Optional] VS Code
  - [Optional] Atom.io
- Oh My Zsh (Z Shell)


**Inspiration from [Dlerm's dev-box.sh](https://gist.github.com/dlerm/c9bd9eaab46a3024481eb803477f4ed2)**