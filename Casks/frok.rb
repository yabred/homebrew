cask "frok" do
  version "1.1.2"
  sha256 "75b8197df446fe49c83c0ef27a2bce3d3197da1287f0519a003a5132ef811fa4"

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
