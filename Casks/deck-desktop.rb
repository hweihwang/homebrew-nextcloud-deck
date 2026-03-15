cask "deck-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.8"
  sha256 arm: "6c62fe5815b865ec68f03f50fc7bcf878aec9e07b60d6e96c468d4b7d1649352", intel: "1adda9e1e6669f88c28546192f41fc5e230f9cf6d9f49bfaec30381a1578349c"

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
