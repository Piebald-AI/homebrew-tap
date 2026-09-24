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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.1/splitrail-v3.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "c671725170e429830cf8ba97f3d60826d7fbc1ab063b6c4abace443889d4bf2f"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.1/splitrail-v3.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "fc81be9b79f2c4f82ad887ad69721d6ebc20f70375e690d5e586ec31ecf29fbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.1/splitrail-v3.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9261ce89ccb9bd0363a78717adbd759af6c14a3577bff592663678a7d8de40d4"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.1/splitrail-v3.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f75948d575901ab4ae286e5beccceb10ac5c064128da7eb3f5cf02739cc7e3c"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
