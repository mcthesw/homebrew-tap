cask "easy-nats" do
  version "0.1.20"

  url "https://github.com/mcthesw/easy-nats/releases/download/v#{version}/easy-nats-macos-aarch64.dmg"
  sha256 "b5990156c980102dd9477ca03fabe8f500bad9b32fd07190c4a4910ffef0dd82"

  name "Easy NATS"
  desc "Desktop GUI client for NATS servers, JetStream, KV, and Object Store"
  homepage "https://github.com/mcthesw/easy-nats"
  depends_on macos: ">= :catalina"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Easy NATS.app"

  zap trash: [
    "~/Library/Application Support/easy-nats",
    "~/Library/Caches/easy-nats",
    "~/Library/Logs/easy-nats",
    "~/Library/Preferences/io.github.mcthesw.easy-nats.plist",
  ]
end
