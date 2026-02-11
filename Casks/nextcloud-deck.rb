cask "nextcloud-deck" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm: "238ea0048fd31c0070fefe13637e34d836d1880f0c86efb0943af4c59eaf55eb", intel: "5240eeae831a638582024310b77fe0a64d2f7caa5e0fa47371ee9fef14c95e44"

  url "https://github.com/hweihwang/nextcloud-deck-desktop-releases/releases/download/v#{version}/NextcloudDeck-mac-#{arch}.dmg",
      verified: "github.com/hweihwang/nextcloud-deck-desktop-releases/"
  name "Nextcloud Deck"
  desc "Nextcloud Deck desktop client for macOS."
  homepage "https://deck.hweihwang.dev/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Nextcloud Deck.app"

  uninstall quit: "com.hweihwang.nextcloud-deck"

  zap trash: [
    "~/Library/Application Support/Nextcloud Deck",
    "~/Library/Caches/com.hweihwang.nextcloud-deck",
    "~/Library/Preferences/com.hweihwang.nextcloud-deck.plist",
    "~/Library/Saved Application State/com.hweihwang.nextcloud-deck.savedState",
  ]
end
