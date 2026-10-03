cask "ns2bridge" do
  version "1.0.1"
  sha256 "c4bbae8110e9cee938917dccae885694310ffa0176ea3bece43d001738a275c8"

  url "https://github.com/info-moed/NS2Bridge/releases/download/v#{version}/NS2Bridge-#{version}-macOS.zip"
  name "NS2 Bridge"
  desc "Switch 2 Pro, NSO GameCube and NSO N64 controllers on macOS"
  homepage "https://info-moed.github.io/NS2Bridge/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "NS2Bridge-#{version}-macOS/NS2 Bridge.app"

  uninstall quit: "local.ns2bridge"

  zap trash: [
    "~/Library/Application Support/NS2Bridge",
    "~/Library/LaunchAgents/local.ns2bridge.sdl-env.plist",
    "~/Library/Preferences/local.ns2bridge.plist",
  ]

  caveats <<~EOS
    NS2 Bridge isn't signed with a paid Apple Developer ID, so macOS blocks its first launch.
    Open it once, then allow it in System Settings → Privacy & Security → Open Anyway.

    Before `brew uninstall --zap`, use Setup → Reset NS2 Bridge in the app if you installed its helper
    into any games: Reset restores their original files.
  EOS
end
