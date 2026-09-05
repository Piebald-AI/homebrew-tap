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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.8.0/splitrail-v3.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "f9151e0d11c55a0bdba5d1fbe3cb33a3568e6f3a9829e93c32666040d6e0b2ea"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.8.0/splitrail-v3.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "0c696379b83800dcdf5afd9c320f3a8ee70ec1fbf6c80fbe7783d039f2180bef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.8.0/splitrail-v3.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a1e5ce1766aecdcea0bdf132d9390f4c8783169904dc126a13b522f0cf7c5a6"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.8.0/splitrail-v3.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7dc4305d3a8241d700e410c4d4e6a9c0ed675273b7c7abe3894d2091d5a3dbab"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
