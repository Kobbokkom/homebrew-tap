cask "walnut-agent" do
  version "0.1.4"
  sha256 "b330ce9bf2744e0034ee32bdb0126812fd1cbaa09e53e43ed04ff41efb509921"

  url "https://github.com/Kobbokkom/walnut-webview-tester/releases/download/walnut-agent-v#{version}/walnut-agent-#{version}-macos-universal.zip"
  name "Walnut Agent"
  desc "Drive Walnut's iPhone web testing tools from a Mac"
  homepage "https://github.com/Kobbokkom/walnut-webview-tester"

  depends_on macos: :ventura

  binary "Walnut Agent.app/Contents/MacOS/walnut-agent"
  artifact "skill", target: "#{HOMEBREW_PREFIX}/share/walnut-agent/skill"
end
