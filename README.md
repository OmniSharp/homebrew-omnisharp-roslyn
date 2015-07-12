# OmniSharp-Roslyn Homebrew Tap

[Homebrew](http://brew.sh/) tap for installing [omnisharp-roslyn](https://github.com/OmniSharp/omnisharp-roslyn) on OS X.

## Installation

First tap the repository with the following:

`brew tap omnisharp/omnisharp-roslyn`

Update brew:

`brew update`

Then you can install omnisharp with:

`brew install omnisharp`

## Dependencies

The formula specifies `mono` and `dnvm` (through the aspnet/dnx tap) as dependencies and will install these via homebrew if they are not found. If you have a pre-existing non-homebrew install of these, you can use `--without-mono` and/or `--without-dnvm` with the install command to skip installing those via brew.

## Upgrading

Like other homebrew formula, when updates are available you can upgrade with `brew update` and `brew upgrade omnisharp`.
