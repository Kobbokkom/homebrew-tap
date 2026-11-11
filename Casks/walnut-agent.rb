cask "walnut-agent" do
  version "0.1.1"
  sha256 "153a3c549460c070fe48bdc9d1e88753a16a08903805b968e17f8bdb2b60d472"

  url "https://github.com/Kobbokkom/walnut-webview-tester/releases/download/walnut-agent-v#{version}/walnut-agent-#{version}-macos-universal.zip"
  name "Walnut Agent"
  desc "Drive Walnut's iPhone web testing tools from a Mac"
  homepage "https://github.com/Kobbokkom/walnut-webview-tester"

  depends_on macos: :ventura

  binary "Walnut Agent.app/Contents/MacOS/walnut-agent"
  artifact "skill", target: "#{HOMEBREW_PREFIX}/share/walnut-agent/skill"
end
