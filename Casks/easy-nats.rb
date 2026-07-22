cask "easy-nats" do
  version "0.1.30"

  url "https://github.com/mcthesw/easy-nats/releases/download/v#{version}/easy-nats-macos-aarch64.dmg"
  sha256 "39ef5c0537f2da104678185e35d3b82e67051e148f6cd91529ea644df3a45211"

  name "Easy NATS"
  desc "Desktop GUI client for NATS servers, JetStream, KV, and Object Store"
  homepage "https://github.com/mcthesw/easy-nats"
  depends_on macos: :catalina

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
