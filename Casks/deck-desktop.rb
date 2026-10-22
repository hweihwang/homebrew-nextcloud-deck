cask "deck-desktop" do
  version "0.9.22"
  sha256 "0a58e225eb47e000c055c5b63169d76c75361565554da15dd56a73550b21c4aa"

  url "https://github.com/hweihwang/nextcloud-deck-desktop-releases/releases/download/v#{version}/stable-macos-arm64-Deckloud.dmg"
  name "Deckloud"
  desc "Desktop client for Nextcloud Deck kanban boards"
  homepage "https://deckloud.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Deckloud.app"

  uninstall quit: "com.hweihwang.nextcloud-deck"

  zap trash: [
    "~/Library/Application Support/nextcloud-deck-desktop",
    "~/Library/Caches/com.hweihwang.nextcloud-deck",
    "~/Library/Preferences/com.hweihwang.nextcloud-deck.plist",
    "~/Library/Saved Application State/com.hweihwang.nextcloud-deck.savedState",
  ]
end
