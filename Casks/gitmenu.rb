# Cask for the gitmenu Homebrew tap. Copy it to the tap repository's Casks/ folder after a
# release, setting version and sha256 (`shasum -a 256 gitmenu_<version>_aarch64.dmg`).
cask "gitmenu" do
  version "0.1.3"
  sha256 "e22087c3d3f2637a03dba3fa0118aafe8c679aa42e6a776170a9dddc3e3da94c"

  url "https://github.com/semanticist21/gitmenu/releases/download/v#{version}/gitmenu_#{version}_aarch64.dmg"
  name "gitmenu"
  desc "Menu bar git panel inspired by VS Code Source Control and GitLens"
  homepage "https://kkom.net/products/gitmenu"

  # The app updates itself; brew only installs it
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "gitmenu.app"

  zap trash: [
    "~/Library/Application Support/gitmenu",
    "~/Library/Caches/net.kkom.gitmenu",
    "~/Library/WebKit/net.kkom.gitmenu",
  ]
end
