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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.8/splitrail-v3.5.8-aarch64-apple-darwin.tar.gz"
      sha256 "d5e3230c9ff1e3843306ec4a8afa34c47551af9fb2763df05c3a0a8c17c0a9b1"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.8/splitrail-v3.5.8-x86_64-apple-darwin.tar.gz"
      sha256 "a40d3e0d83b18b6d8a2444fbfb0ef3311126d64d25f8cc388f353265949d1056"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.8/splitrail-v3.5.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "96c05d848372826ee07efa755eb6960249b598e38d83196b698ee9bf6d296154"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.8/splitrail-v3.5.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "574c91b128874c86771e4ac1371b1bfa7dccfc4a1d895766ae8c417c3658535b"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
