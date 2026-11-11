cask "walnut-agent" do
  version "0.1.2"
  sha256 "da605b2f2e23ab13624f25f768d29bb0eb59b8a01461403bef6e7262af2b62ba"

  url "https://github.com/Kobbokkom/walnut-webview-tester/releases/download/walnut-agent-v#{version}/walnut-agent-#{version}-macos-universal.zip"
  name "Walnut Agent"
  desc "Drive Walnut's iPhone web testing tools from a Mac"
  homepage "https://github.com/Kobbokkom/walnut-webview-tester"

  depends_on macos: :ventura

  binary "Walnut Agent.app/Contents/MacOS/walnut-agent"
  artifact "skill", target: "#{HOMEBREW_PREFIX}/share/walnut-agent/skill"
end
