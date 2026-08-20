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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.1/splitrail-v3.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "672e4a59acb1142c6735187a12f3e1c83b07f468bde21a6859c532171ad5d622"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.1/splitrail-v3.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "e3e2c284d5ba0ed0e66595520510d0b925f042f331331cd4f5d1227708452f47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.1/splitrail-v3.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "92497bc758c1d9c61d6d655eb3e9b1ddd797f86cc1dfc70cdbea55023a991a16"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.1/splitrail-v3.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3080d86a138d2c01aa5163d8b58c6db2e0f1aa53082af69534f0a38826582ab7"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
