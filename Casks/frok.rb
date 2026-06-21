cask "frok" do
  version "1.0.1"
  sha256 "b60a11638633c29f870c75ecc205feed78bcb9fa5cd3192bd0b507957d50d3ea"

  url "https://github.com/yabred/FROK/releases/download/v#{version}/FROK-#{version}.zip"
  name "FROK"
  desc "Instant sound effects for macOS from the menu bar, hotkeys, or command line"
  homepage "https://github.com/yabred/FROK"

  depends_on macos: :sonoma

  app "FROK.app"
  binary "FROK.app/Contents/Resources/bin/frok", target: "frok"

  zap trash: [
    "~/Library/Preferences/com.YB.frok.plist",
  ]
end
