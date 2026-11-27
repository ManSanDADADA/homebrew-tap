cask "kwikpaste" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.11"
  sha256 arm:   "1795c0f9cf6443d8b9f371a9651ad8c66f8dffac8985c51b7b3866f55c0a00c4",
         intel: "a407e1dc08f1974e2534f8d34a12bdedf8835cbb11b9b62432a86d9a49dc8aa0"

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
