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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.7/splitrail-v3.5.7-aarch64-apple-darwin.tar.gz"
      sha256 "9081d79802d16055418ba5fcef5e88e50c3b32792e76ecff746dc95c7ab79a93"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.7/splitrail-v3.5.7-x86_64-apple-darwin.tar.gz"
      sha256 "f72ebdaebecfa84d67b0c0d9bdc9ccce8516c28697a133fcb2a890336b00569d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.7/splitrail-v3.5.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41d8afa2331531e110fba41a9cf4bbec1afaca55e410c78c25032d7e60f94cf6"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.7/splitrail-v3.5.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8667b13f51e9d2dace8c088b1805f5f1c8c2b8019263fe2a8d43a2270a1cd06f"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
