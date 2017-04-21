# OmniSharp-Roslyn Homebrew Tap

[Homebrew](http://brew.sh/) tap for installing [omnisharp-roslyn](https://github.com/OmniSharp/omnisharp-roslyn) on OS X.

## Installation

First tap the repository with the following:

`brew tap omnisharp/omnisharp-roslyn`

Update brew:

`brew update`

Then you can install omnisharp (.NET Core standalone) with:

`brew install omnisharp`

or the Mono version (recommended):

`brew install omnisharp-mono`

## Dependencies

The formula specifies `mono` as a dependency and will install it via homebrew during installation if it isn’t found. If you have an existing non-homebrew install of `mono`, you can use `--without-mono` with the install command to skip installing it.

## Upgrading

Like other homebrew formula, when updates are available you can upgrade with `brew update` and `brew upgrade omnisharp`.
