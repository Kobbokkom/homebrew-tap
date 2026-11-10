cask "walnut-agent" do
  version "0.1.0"
  sha256 "2943dbb47f6fc3b25600bb9919937ebbbb878615efd56524b6f368ac9c623b39"

  url "https://github.com/Kobbokkom/walnut-webview-tester/releases/download/walnut-agent-v#{version}/walnut-agent-#{version}-macos-universal.zip"
  name "Walnut Agent"
  desc "Drive Walnut's iPhone web testing tools from a Mac"
  homepage "https://github.com/Kobbokkom/walnut-webview-tester"

  depends_on macos: :ventura

  binary "Walnut Agent.app/Contents/MacOS/walnut-agent"
  artifact "skill", target: "#{HOMEBREW_PREFIX}/share/walnut-agent/skill"
end
