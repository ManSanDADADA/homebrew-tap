cask "kwikpaste" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.8"
  sha256 arm:   "4211e4c87bf946c4d4f5b7a6e70c730f558beb743ff07b9975b050651a047935",
         intel: "2da108669188d4bb00292b4edccd5446cc7647c341ad5e57e4558eaafab2ece7"

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
