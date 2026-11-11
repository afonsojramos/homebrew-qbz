cask "qbz" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "6c7d552b7e8bc97ae5a55c921e3ac149bc3b9f738d72c24786be59aeeb045ea4",
         intel: "2572b124e4d620cb69b94fa5ff2ed99fdbdaa6359ccc3425ee6ef97a3b5c1869"

  url "https://github.com/afonsojramos/qbz-macos/releases/download/v#{version}/QBZ_#{version}_#{arch}.dmg"
  name "QBZ"
  desc "Desktop client for Qobuz"
  homepage "https://github.com/afonsojramos/qbz"

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
