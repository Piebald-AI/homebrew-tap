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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.11.0/splitrail-v3.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "6ec8b747ae27d37a23d0ad5b2ce3a09026b47b4bec225547692ffe9906f6916e"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.11.0/splitrail-v3.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c23d28890be539c2cf26948e0f1d5b2b0889cad476bf7a56ec8d7d1aa43e4d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.11.0/splitrail-v3.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23cc05b69b9d7d03e4ae28f026d9e14101a257f84ce42653167d44a9df181956"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.11.0/splitrail-v3.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4419743f527a351f6ddc8c34695ece290b9eb004bf8beed57857d5f258ca16ce"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
