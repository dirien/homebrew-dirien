cask "huebar" do
  version "0.2.0"
  sha256 "01dd48c3af3522ddbc1bf2db7350df47a62afccc7d1c0a2bc06bcd043549bd42"

  url "https://github.com/dirien/huebar/releases/download/v#{version}/HueBar-#{version}.dmg"
  name "HueBar"
  desc "Menu bar app for controlling Philips Hue lights"
  homepage "https://github.com/dirien/huebar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "HueBar.app"

  uninstall quit: "com.dirien.HueBar"

  zap trash: "~/Library/Preferences/com.dirien.HueBar.plist"

  caveats <<~EOS
    HueBar is not notarized by Apple yet, so macOS blocks its first launch.
    Open System Settings → Privacy & Security and click "Open Anyway" next to HueBar.
  EOS
end
