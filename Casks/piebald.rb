cask "piebald" do
  version "0.6.3"
  sha256 "2dcdd4b2f423d5b77963ca50ecf97b11abb32a3b76a73dfee353ccf9e82cb9ad"

  url "https://github.com/Piebald-AI/piebald-issues/releases/download/v#{version}/Piebald_#{version}_universal.dmg",
      verified: "github.com/Piebald-AI/"
  name "Piebald"
  desc "Ultimate agentic AI control experience for developers"
  homepage "https://piebald.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Piebald.app"

  zap trash: [
    "~/Library/Application Support/Piebald",
    "~/Library/Caches/Piebald",
    "~/Library/Caches/ai.piebald.desktop",
    "~/Library/Logs/Piebald",
    "~/Library/Preferences/ai.piebald.desktop.plist",
    "~/Library/Saved Application State/ai.piebald.desktop.savedState",
    "~/Library/WebKit/ai.piebald.desktop",
  ]
end
