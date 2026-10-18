cask "kwikpaste" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.7"
  sha256 arm:   "aea7188c5eb6699ec1c666b8a51e5544027727cf9fdd382f6809e04157b4b065",
         intel: "65d8cdc7bcbc92344f8b80a708e7bbad434e72907ff146380998a60c637d6920"

  url "https://github.com/ManSanDADADA/KwikPaste/releases/download/v#{version}/KwikPaste_#{version}_#{arch}.dmg"
  name "KwikPaste"
  name "快贴"
  desc "Local-first clipboard manager"
  homepage "https://github.com/ManSanDADADA/KwikPaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "KwikPaste.app"

  uninstall quit:       "com.fastthree.kwikpaste",
            login_item: "KwikPaste"

  zap trash: [
    "~/Library/Application Support/com.fastthree.kwikpaste",
    "~/Library/Caches/com.fastthree.kwikpaste",
    "~/Library/Logs/com.fastthree.kwikpaste",
    "~/Library/Preferences/com.fastthree.kwikpaste.plist",
    "~/Library/Saved Application State/com.fastthree.kwikpaste.savedState",
    "~/Library/WebKit/com.fastthree.kwikpaste",
  ]
end
