cask "darkview" do
  version "0.3.0"
  sha256 "23bb130fa508f7f7451fe570d18a987454040b55444dcfded1a3ee194350189b"

  url "https://dl.darkview.barcia.dev/darkview-#{version}.dmg",
      verified: "dl.darkview.barcia.dev/"
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
