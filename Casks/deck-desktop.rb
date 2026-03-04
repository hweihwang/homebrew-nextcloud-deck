cask "deck-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.7"
  sha256 arm: "0a3ff3ac23e26c493a403995b8bd00fe52722ca55bfd552a262cb61eadb8ce91", intel: "37ba7d616afd4b44f626bff5e50ff045e30956b737dd3b403e5f528f82128162"

  url "https://github.com/hweihwang/nextcloud-deck-desktop-releases/releases/download/v#{version}/deck-desktop-mac-#{arch}.dmg",
      verified: "github.com/hweihwang/nextcloud-deck-desktop-releases/"
  name "Deckloud"
  desc "Deckloud for macOS — a native Nextcloud Deck client. Also available on the App Store for iOS."
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
