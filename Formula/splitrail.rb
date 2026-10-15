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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.12.0/splitrail-v3.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "160042417c5641ee8432607c5c8cd8231bf11b4444693df77c52527973d01aca"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.12.0/splitrail-v3.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "aa775512b70bf390bcca7a97bd7dbada9317c672424977de64952ad5221761f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.12.0/splitrail-v3.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5226d18cfe5ed5d211ab118ba543ffa331a068ed86b947df8c32966d990587d5"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.12.0/splitrail-v3.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26abbd4f73736d0c284f5d5e0f5265532d9898b57618a17a7022f26ad1b557a3"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
