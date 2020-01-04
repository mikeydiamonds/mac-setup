# mac-setup

## Options

 1. Use osx-setup.sh on a fresh Mac
 2. The Brewfile can be used if [Homebrew](https://brew.sh/) is already present using:

```brew bundle install```

## Make Your Own Brewfile

The fun part of this effort is to build your own Brewfile but if you need some inspiration run this command on your existing homebrew installation:

```brew bundle dump```

This will create a Brewfile in the current directory which you can use to start with.

## mas to the Rescue

Another good trick is to install [mas](https://github.com/mas-cli/mas) (stands for “Mac App Store”).

```brew install mas```

Once installed run `mas list` to see your current Mac apps and their IDs. You can then regenerate the Brewfile with `brew bundle dump` and it will include the Mac App Store apps.