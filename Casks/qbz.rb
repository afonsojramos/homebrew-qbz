cask "qbz" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.2"
  sha256 arm:   "e4b7dd7cef5b22c9c1fad62f6879f905f346249933df7446175b6cf4fe9176a7",
         intel: "8c12fa4602a67015cf254412bfd3c0e85db122c9a6cbed3481e8e15ba53b9f47"

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
