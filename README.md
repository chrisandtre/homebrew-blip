# Homebrew tap for Blip

The Mac side of [Blip for Windows](https://github.com/chrisandtre/blip-windows):
iMessage on your PC, through a Mac you own.

```sh
brew install chrisandtre/blip/blip
blip setup
```

`blip setup` links the bridge tools into `~/.blip/bin`, walks you through the
Mac permissions Blip needs (it opens each Settings pane and ticks it off when
granted), then shows a six-digit code. Enter that code in Blip on your PC.

Other commands: `blip pair` (pair another PC), `blip status`, `blip unpair <name>`,
`blip update` (after `brew upgrade blip`).

Blip is built on [nixfred/blip](https://github.com/nixfred/blip) by Fred Nix. MIT.
