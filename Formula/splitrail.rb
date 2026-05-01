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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.2/splitrail-v3.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "ba8b31849c54738692a4c047429ea2cdb9d3ee52ac07daeded1140fabaa086f4"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.2/splitrail-v3.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "effe698af333b7f79188d1543d8ed322016de1c20bc6a030103a7e24f8414303"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.2/splitrail-v3.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fed09054fe3843254d42023dbc6f35a94c1efb7b77e1e93264233495790f25ae"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.2/splitrail-v3.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16259ea203c76c191487a89c8ebb35622e01bb2ca830c0f8157ffe9d3327a78f"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
