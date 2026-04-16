cask "deck-desktop" do
  version "0.4.0"
  sha256 "2412d7c910a25ab1e57ea7b382953ee0745535260f21cd0bb67637b2949bc582"

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
