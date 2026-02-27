cask "deck-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.6"
  sha256 arm: "ee3e2a8ab521b36863ead4571f2a5cbdbd3d2bb294c666c39585c35555768ba6", intel: "205a24b4a9500acc0d95b606a74947d1d94d2fdf8088596b99fb7fa5ea28e8cb"

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
