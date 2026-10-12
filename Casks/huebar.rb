cask "huebar" do
  version "0.1.0"
  sha256 "4ce4190da8bd3a3e4758c1f90c3479d3c764fce9bbeb01e1d9a7ef39d997779f"

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
