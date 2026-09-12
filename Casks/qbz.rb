cask "qbz" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "c25ffe0c4a713581036f7856f45533ff114dadde4084f7ff73fad204b3926c25",
         intel: "c6d67ea26e1d2ca52729ce11deb94a2fcfce35b25c7310155cf013e222e59981"

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
