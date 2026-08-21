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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.2/splitrail-v3.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "1420ffedc0691d7419ea207685cf63401a4abb2bdb24abb36bca1f00c1c94d92"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.2/splitrail-v3.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "d84017d6620386df686e380ea7c9a0dcf65b4643d85ea33417c72a11b70ff796"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.2/splitrail-v3.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc899ef95d80ccb826766ad6ebf2c255d97d8e803de4ac0d52456c96c09e8279"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.2/splitrail-v3.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b0a4b050db977d7fe52ca11c2d3b5c49957b7725a4453248bd931ff0d9c3aaf"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
