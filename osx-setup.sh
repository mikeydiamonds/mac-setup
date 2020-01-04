#!/bin/bash

# A script to set up a new mac. Uses bash, homebrew, etc.

# Focused for ruby/rails development. Includes many utilities and apps:
# - homebrew, rvm, node
# - quicklook plugins, terminal fonts
# - browsers: chrome, firefox
# - dev: iterm2, sublime text, postgres, chrome devtools, etc.
# - team: slack, dropbox, google drive, skype, etc
# - utils: unarchiver, o-day, caffine, skitch, etc
# - productivity: evernote, viscosity, omnigraffle, karabiner, etc.

# notifications
function echo_ok { echo -e '\033[1;32m'"$1"'\033[0m'; }
function echo_warn { echo -e '\033[1;33m'"$1"'\033[0m'; }
function echo_error  { echo -e '\033[1;31mERROR: '"$1"'\033[0m'; }

echo_ok "Install starting. You may be asked for your password (for sudo)."

# requires xcode and tools!
xcode-select --install

# homebrew
if hash brew &> /dev/null; then
    echo_ok "Homebrew already installed"
else
    echo_warn "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# let the homebrew bundle do it's thing
echo_ok "Now the Brewfile goes to work"
brew bundle install

# cleanup after homebrew
echo_ok "A little housekeeping..."
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

echo
echo_ok "Done."
echo
