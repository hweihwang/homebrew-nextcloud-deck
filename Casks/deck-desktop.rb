cask "deck-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm: "34888db9c4c09b3a6e6a00e8a4a3ce6e3545f7ed235198d99b470a570266a7e0", intel: "1a4033ad036ce0303f01738d9a227003387df20476204288b064bc76c7c13bf9"

  url "https://github.com/hweihwang/nextcloud-deck-desktop-releases/releases/download/v#{version}/deck-desktop-mac-#{arch}.zip",
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
