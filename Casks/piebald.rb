cask "piebald" do
  version "0.5.2"
  sha256 "6a546c50a85c34940770a026c19dbf2935fd7f58689910322ca4e781a457c7ef"

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
