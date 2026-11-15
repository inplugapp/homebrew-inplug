cask "inplug" do
  version "1.1.24"
  sha256 "201d26baa2bc92a4cc5a1d6c2123bb985b0a0edd07c5c94760d2640505713f80"

  url "https://github.com/inplugapp/InPlug-releases/releases/download/v#{version}/InPlug.dmg"
  name "InPlug"
  desc "Find any plugin by how it looks and add it to Logic Pro or Ableton Live in one keystroke"
  homepage "https://inplug.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "InPlug.app"

  zap trash: [
    "~/Library/Application Support/AG PlugFinder",
    "~/Library/Preferences/com.adigoldstein.AGPlugFinder.plist",
  ]
end
