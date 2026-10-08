cask "kwikpaste" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "7c1bd70c818a6ede6606e100de7d0dfdab9a3d241026e9aa5c0056d11000c0eb",
         intel: "e4e060bd596922c933cda42935317d9576d368b05f1a31fee4f6730828fdb117"

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
