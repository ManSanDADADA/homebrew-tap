cask "kwikpaste" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.8"
  sha256 arm:   "9f449d2abb4bb57e9637663707d2f22b079c6a209e1d65cbc2500d9423782b63",
         intel: "bbe990be9fdbf96d6feb0556d8a5768717aef098045d2d09a8b390a20e0b4a79"

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
