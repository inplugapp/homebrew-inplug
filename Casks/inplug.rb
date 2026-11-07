cask "inplug" do
  version "1.0.68"
  sha256 "83c77fe167a8574f46e665092d2149491cbae10a191bc86de14230525c8d1b78"

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
