cask "tallystick" do
  version "0.3.0"
  sha256 "b4091abdea8a97c22919beeb2c2a445d97c62ab8f64bdad515a9edd2c34c67a6"

  url "https://dl.barcia.dev/tallystick/tallystick-#{version}.dmg"
  name "Tallystick"
  desc "Native app for Beancount plain-text accounting ledgers"
  homepage "https://tallystick.barcia.dev/"

  livecheck do
    url "https://tallystick.barcia.dev/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Tallystick.app"

  zap trash: [
    "~/Library/Application Scripts/dev.barcia.beancount-desktop",
    "~/Library/Application Scripts/dev.barcia.tallystick",
    "~/Library/Application Support/beancount-desktop",
    "~/Library/Containers/dev.barcia.beancount-desktop",
    "~/Library/Containers/dev.barcia.tallystick",
  ]
end
