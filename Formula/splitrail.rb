class Splitrail < Formula
  desc "Real-time token usage tracker and cost monitor for AI coding agents"
  homepage "https://splitrail.dev"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.9.0/splitrail-v3.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "57f191311a3d383323a721fd3fd9e276e8e66933c4a188f9094dacea03a6dfb2"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.9.0/splitrail-v3.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "153c2917cbf665cc862c280418d1abd03ed6700239eb0c882467488633c4cedc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.9.0/splitrail-v3.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "349d1e1a2d7f0f12aeeda4906503fb069ef104362551ab5dcbb9fc910596e126"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.9.0/splitrail-v3.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef48684d6c370e8cda69b5aa33328c74c7e24a68ce1f8a9e044c53f01c61c3ad"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
