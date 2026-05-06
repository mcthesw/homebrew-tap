cask "easy-nats" do
  version "0.1.17"

  url "https://github.com/mcthesw/easy-nats/releases/download/v#{version}/easy-nats-macos-aarch64.dmg"
  sha256 "25d2770147ff707265e3c51f19228a03f5365f9e4e4da25412beb2dee0918008"

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
