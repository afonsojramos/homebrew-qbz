cask "qbz" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "08c8a51087ba6b9508760121f705e98738d9e7eb9e7288d0b255d7927dd0dcce",
         intel: "0fdfe5d57ffe80b69ec850692cc4b4dfea276bc1aebd1905d729b8f8152b29e1"

  url "https://github.com/afonsojramos/qbz-macos/releases/download/v#{version}/QBZ_#{version}_#{arch}.dmg"
  name "QBZ"
  desc "Desktop client for Qobuz"
  homepage "https://github.com/vicrodh/qbz"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "QBZ.app"

  zap trash: [
    "~/Library/Application Support/qbz",
    "~/Library/Caches/qbz",
    "~/Library/Saved Application State/com.blitzfc.qbz.savedState",
  ]
end
