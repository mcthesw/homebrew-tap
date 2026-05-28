cask "easy-nats" do
  version "0.1.23"

  url "https://github.com/mcthesw/easy-nats/releases/download/v#{version}/easy-nats-macos-aarch64.dmg"
  sha256 "c42be66a5f889fe88b2c6b26dd691bb87c92a3775a4f05535920f7bc789ef42c"

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
