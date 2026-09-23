cask "beancount-desktop" do
  version "0.1.0"
  sha256 "7ec4419abef8f22b1c20b36f927392a774158ebe303fd27ab843b8e951a6dace"

  url "https://dl.beancount.barcia.dev/beancount-desktop-#{version}.dmg"
  name "Beancount Desktop"
  desc "Native app for Beancount plain-text accounting ledgers"
  homepage "https://beancount.barcia.dev/"

  livecheck do
    url "https://beancount.barcia.dev/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Beancount Desktop.app"

  zap trash: [
    "~/Library/Application Scripts/dev.barcia.beancount-desktop",
    "~/Library/Application Support/beancount-desktop",
    "~/Library/Containers/dev.barcia.beancount-desktop",
  ]
end
