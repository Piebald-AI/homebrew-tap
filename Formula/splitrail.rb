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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.9.1/splitrail-v3.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "dbee709b80dae66ef1114f8e4ffeb3e11c91dbb10aa4f105dad78b4452c3ff0a"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.9.1/splitrail-v3.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "b5ade55494b9936288e4f696c2d349a17fea1b5f3775fd8b687492ba5fa034c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.9.1/splitrail-v3.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a14f15705e27fd755bf287be34ee3880f6dc358cc5ee4a1f1eee32d0f869ae69"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.9.1/splitrail-v3.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c254bfa97c7ae8ee1b285b42dcd4f9a8d6a66d5142e120f31a5d9535d996223e"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
