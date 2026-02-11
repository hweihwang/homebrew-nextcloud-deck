cask "deck-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm: "c18d3c05a9adbc115d6da8e6df06579260e369442f22710dbb403b620bc9be72", intel: "dc113350008523c04446ac406095403c0479af64f70d77c4876f8f0047384f9d"

  url "https://github.com/hweihwang/nextcloud-deck-desktop-releases/releases/download/v#{version}/deck-desktop-mac-#{arch}.dmg",
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
