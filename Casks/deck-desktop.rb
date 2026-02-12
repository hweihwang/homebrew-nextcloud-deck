cask "deck-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm: "f1376cc71a1b43b8099ca94ab8e06cf4ee53c08d734bf04a6a8378ee4c19032f", intel: "dc04d8c5ca9899186571487f09ef19ba129a67774ae39188ea11e40b57f952e1"

  url "https://github.com/hweihwang/nextcloud-deck-desktop-releases/releases/download/v#{version}/deck-desktop-mac-#{arch}.dmg",
      verified: "github.com/hweihwang/nextcloud-deck-desktop-releases/"
  name "Deck Desktop"
  desc "Unofficial desktop client for Nextcloud Deck on macOS."
  homepage "https://deck.hweihwang.dev/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Deck Desktop.app"

  uninstall quit: "com.hweihwang.nextcloud-deck"

  zap trash: [
    "~/Library/Application Support/Nextcloud Deck",
    "~/Library/Application Support/Deck Desktop",
    "~/Library/Caches/com.hweihwang.nextcloud-deck",
    "~/Library/Preferences/com.hweihwang.nextcloud-deck.plist",
    "~/Library/Saved Application State/com.hweihwang.nextcloud-deck.savedState",
  ]
end
