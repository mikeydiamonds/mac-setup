#!/bin/sh

# A script to set up a new mac using Homebrew.

# notifications
function echo_ok { echo '\033[1;32m'"$1"'\033[0m'; }
function echo_warn { echo '\033[1;33m'"$1"'\033[0m'; }
function echo_error  { echo '\033[1;31mERROR: '"$1"'\033[0m'; }

echo_ok "Install starting. You may be asked for your password (for sudo)."

# requires xcode and tools!
xcode-select --install

# homebrew
if hash brew &> /dev/null; then
    echo_ok "Homebrew already installed, updating"
    brew update
else
    echo_warn "Installing homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# let the homebrew bundle do it's thing
echo_ok "Now the Brewfile goes to work"
brew bundle install

# cleanup after homebrew
echo_ok "A little housekeeping..."
brew cleanup

echo
echo_ok "Done."
echo
