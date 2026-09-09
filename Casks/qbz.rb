cask "qbz" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "3d40da33b9dfe2a123e1c14c9dddb3b3ba138e515e27bd47dfcfb53e5bdc178e",
         intel: "d2a02a7197fe381d5a0cee12acee4b64a5d3c86c51f1d35169d4fca745589cd8"

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
