cask "deck-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.5"
  sha256 arm: "f7b59be25bb5b0d3c580a7d547f92af74df727c351a8aca89351f3c355ec4590", intel: "3dc30077e9be30fbc85a77d90e12ec1d8fa2219df2850919e018e3773d40afa5"

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
