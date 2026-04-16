# This cask is automatically updated by CI on each release.
# To install: brew install mcthesw/tap/easy-nats
cask "easy-nats" do
  version "0.1.0"

  on_arm do
    url "https://github.com/mcthesw/easy-nats/releases/download/v#{version}/easy-nats-macos-aarch64.dmg"
    sha256 "TODO_FILL_AFTER_FIRST_RELEASE"
  end

  on_intel do
    url "https://github.com/mcthesw/easy-nats/releases/download/v#{version}/easy-nats-macos-x86_64.dmg"
    sha256 "TODO_FILL_AFTER_FIRST_RELEASE"
  end

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
  ]
end
