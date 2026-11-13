cask "inplug" do
  version "1.1.12"
  sha256 "be3d78f99778413bc3fde8d18e0f7225fab7baf4ce0b58ad3a54daf592da6652"

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
