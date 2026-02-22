cask "deck-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm: "291d86b41b5a510d6ccaa37a0b28b05798c5900e61072469fb4ab4aa033f4b0d", intel: "266f89cda6021f245c9a0b2180ab1cf053165f840d463c5fbb846152e4ad1902"

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
