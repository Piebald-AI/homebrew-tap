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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.2/splitrail-v3.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "c6a8d34a270bbfc8a91ccdf45bbfd2259ebc87ada1447244f325275c18748cdf"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.2/splitrail-v3.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "79ebe8269f6ef18718c882672654af391a78e1cfbd22c0b211c95d37655a00f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.2/splitrail-v3.10.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7edfa53ff9618ee24ba6b81e89bb1cae9656170ea363f70c04aa24d70a97eac3"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.2/splitrail-v3.10.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3c7e4ab53bb9a3fecd46279e5ced8e09ee458de264e33b937721191d27a184a"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
