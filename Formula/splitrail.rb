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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.13.1/splitrail-v3.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "79769f96d8c7c808bbfdecdf700d3ef0694586c0f18b22f0af8c36acf02df25d"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.13.1/splitrail-v3.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "8f20f1b2be33ed390bf51b1b6810c81fb2bd055aad46a08a7cefda5776ecd28b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.13.1/splitrail-v3.13.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "075249f25d3316a15688176a26af9cb5469dba5e116d0ec680fdf755a2c9700a"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.13.1/splitrail-v3.13.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a212ca9b35f8a1ecc591d6c1f2d4c4bb6dd97cd6727b516249210586d948b99f"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
