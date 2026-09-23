# Deckloud for Mac with Homebrew

Install [Deckloud](https://deckloud.com), the Nextcloud Deck app, on your Mac with one command:

```sh
brew install --cask hweihwang/nextcloud-deck/deck-desktop
```

Deckloud needs macOS 14 or later on an Apple Silicon Mac. The app is signed and notarized by Apple and updates itself, so you don't need to run `brew upgrade` for it.

To remove it:

```sh
brew uninstall --cask deck-desktop
```

Add `--zap` to also delete Deckloud's local data on this Mac. Your boards stay on your Nextcloud server.

## More

- Downloads for iPhone, iPad, Windows, and Linux: [Deckloud releases](https://github.com/hweihwang/nextcloud-deck-desktop-releases#download)
- Bugs, questions, and ideas: [Deckloud issues](https://github.com/hweihwang/nextcloud-deck-desktop-releases/issues/new/choose)
