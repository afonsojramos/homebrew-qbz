cask "qbz" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.2"
  sha256 arm:   "4c873d368e77b92c9d8090469eef2439d47f8db1e64c4d5934530414583f6fc2",
         intel: "586e1e903d1a87b902a69999bb12f5f631319dfdc1cee6bbb0364dd140e0a542"

  url "https://github.com/afonsojramos/qbz-macos/releases/download/v#{version}/QBZ_#{version}_#{arch}.dmg"
  name "QBZ"
  desc "Desktop client for Qobuz"
  homepage "https://github.com/vicrodh/qbz"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "QBZ.app"

  zap trash: [
    "~/Library/Application Support/qbz",
    "~/Library/Caches/qbz",
    "~/Library/Saved Application State/com.blitzfc.qbz.savedState",
  ]
end
