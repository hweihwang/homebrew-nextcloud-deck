cask "deck-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.4"
  sha256 arm: "dcd61df52edb1e969118eda41d5dee205052277ba7d6cd4ff5e54e15af14d093", intel: "d203f472b2f53765be3a54e047ef8331243c0d2960fecf8f8a7a7ba5a52dd2eb"

  url "https://github.com/hweihwang/nextcloud-deck-desktop-releases/releases/download/v#{version}/deck-desktop-mac-#{arch}.dmg",
      verified: "github.com/hweihwang/nextcloud-deck-desktop-releases/"
  name "Deckloud"
  desc "Deckloud is an unofficial desktop client for Nextcloud Deck on macOS."
  homepage "https://deckloud.com"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Deckloud.app"

  uninstall quit: "com.hweihwang.nextcloud-deck"

  zap trash: [
    "~/Library/Application Support/Nextcloud Deck",
    "~/Library/Application Support/Deckloud",
    "~/Library/Caches/com.hweihwang.nextcloud-deck",
    "~/Library/Preferences/com.hweihwang.nextcloud-deck.plist",
    "~/Library/Saved Application State/com.hweihwang.nextcloud-deck.savedState",
  ]
end
