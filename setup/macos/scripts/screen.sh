###############################################################################
# Screen                                                                      #
###############################################################################

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Enable subpixel font rendering on non-Apple LCDs
# artifact: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501
defaults write NSGlobalDomain AppleFontSmoothing -int 1

# Enable HiDPI display modes (requires restart)
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

# ----- Screenshots
# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Save screenshots to the screencaptures folder
mkdir -p $HOME/screencaptures
defaults write com.apple.screencapture location -string $HOME/screencaptures

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# set default screenshot name
defaults write com.apple.screencapture name "screenshot"

killall SystemUIServer &> /dev/null