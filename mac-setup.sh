defaults write com.apple.Terminal ApplePressAndHoldEnabled -bool false
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 1
defaults write com.apple.dock slow-motion-allowed -bool true; killall Dock
