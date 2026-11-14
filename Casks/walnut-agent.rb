cask "walnut-agent" do
  version "0.1.3"
  sha256 "dff241cef5445e0e0c863eeb9a734fba866f9065f4a2be697b0dbaa65d9462c8"

  url "https://github.com/Kobbokkom/walnut-webview-tester/releases/download/walnut-agent-v#{version}/walnut-agent-#{version}-macos-universal.zip"
  name "Walnut Agent"
  desc "Drive Walnut's iPhone web testing tools from a Mac"
  homepage "https://github.com/Kobbokkom/walnut-webview-tester"

  depends_on macos: :ventura

  binary "Walnut Agent.app/Contents/MacOS/walnut-agent"
  artifact "skill", target: "#{HOMEBREW_PREFIX}/share/walnut-agent/skill"
end
