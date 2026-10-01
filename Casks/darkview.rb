cask "darkview" do
  version "0.5.0"
  sha256 "71beda9413c69827e0790fb79c1600e003ddabf8b7aea85ce25f16e9adb402e7"

  url "https://dl.darkview.barcia.dev/darkview-#{version}.dmg"
  name "Darkview"
  desc "Photo viewer and organiser with RAW support, EXIF editing and geotagging"
  homepage "https://darkview.barcia.dev/"

  livecheck do
    url "https://darkview.barcia.dev/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Darkview.app"

  zap trash: [
    "~/Library/Application Support/Darkview",
    "~/Library/Caches/dev.barcia.darkview",
    "~/Library/HTTPStorages/dev.barcia.darkview",
    "~/Library/Preferences/dev.barcia.darkview.plist",
    "~/Library/Saved Application State/dev.barcia.darkview.savedState",
  ]
end
