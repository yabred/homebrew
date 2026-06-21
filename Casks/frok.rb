cask "frok" do
  version "1.0.0"
  sha256 "5795c421933298381e0f3cadb46dc66e131fef79696c9b50b668ef40ff6ce91b"

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
