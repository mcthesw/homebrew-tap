cask "easy-nats" do
  version "0.1.12"

  url "https://github.com/mcthesw/easy-nats/releases/download/v#{version}/easy-nats-macos-aarch64.dmg"
  sha256 "2312ba3d16283d61e96492c15dfecb61dd1bcd8fd8cab06a09e4d4f44e5cdc69"

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
