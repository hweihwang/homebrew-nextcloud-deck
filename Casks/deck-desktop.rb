cask "deck-desktop" do
  version "0.9.27"
  sha256 "7e3521df6aca60a437de8f450f8da6ee1fa3c7990486618ca97e2f4bcffc9d1b"

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
    "~/Library/Application Support/Deckloud",
    "~/Library/Application Support/com.hweihwang.nextcloud-deck",
    "~/Library/Application Support/nextcloud-deck-desktop",
    "~/Library/Caches/com.hweihwang.nextcloud-deck",
    "~/Library/Containers/com.hweihwang.nextcloud-deck.intents",
    "~/Library/Containers/com.hweihwang.nextcloud-deck.notifications",
    "~/Library/Containers/com.hweihwang.nextcloud-deck.share",
    "~/Library/Containers/com.hweihwang.nextcloud-deck.widget",
    "~/Library/Group Containers/ZYC8QP9W3T.group.com.hweihwang.nextcloud-deck",
    "~/Library/HTTPStorages/com.hweihwang.nextcloud-deck",
    "~/Library/Preferences/com.hweihwang.nextcloud-deck.notifications.plist",
    "~/Library/Preferences/com.hweihwang.nextcloud-deck.plist",
    "~/Library/Saved Application State/com.hweihwang.nextcloud-deck.savedState",
    "~/Library/WebKit/com.hweihwang.nextcloud-deck",
  ]
end
