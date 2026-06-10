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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.6/splitrail-v3.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "86b32ea5e453123a2fb76d8e03b63f1485297fd800713ea327d4dba677d55f44"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.6/splitrail-v3.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "e55906a0188a19654678046008231774f87b9c72c90360a59b3a01aa06a08dd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.6/splitrail-v3.5.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb7b698b49b68de66cc287c7ddab41a86be4266753dd7449399830f95004d90a"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.6/splitrail-v3.5.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6139a5998584c825759e7839994d60018961075a54e34cbcacf6dd25315a72b0"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
