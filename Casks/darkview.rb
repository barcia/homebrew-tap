cask "darkview" do
  version "0.4.0"
  sha256 "2fe7500c4f8e6c6b9d229b55c2ccf0e81cf83431e274438caba5c9580b7ddf4b"

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
