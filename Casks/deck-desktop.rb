cask "deck-desktop" do
  version "0.6.0"
  sha256 "28aeb77a2fece1d7ede74eae82f46d9a9342d69dd3c441942696514985a23c8a"

  url "https://github.com/hweihwang/nextcloud-deck-desktop-releases/releases/download/v#{version}/stable-macos-arm64-Deckloud.dmg",
      verified: "github.com/hweihwang/nextcloud-deck-desktop-releases/"
  name "Deckloud"
  desc "Deckloud for Nextcloud"
  homepage "https://deckloud.com"

  depends_on arch: :arm64
  auto_updates true

  app "Deckloud.app"

  uninstall quit: "com.hweihwang.nextcloud-deck"

  zap trash: [
    "~/Library/Application Support/nextcloud-deck-desktop",
    "~/Library/Caches/com.hweihwang.nextcloud-deck",
    "~/Library/Preferences/com.hweihwang.nextcloud-deck.plist",
    "~/Library/Saved Application State/com.hweihwang.nextcloud-deck.savedState",
  ]
end
