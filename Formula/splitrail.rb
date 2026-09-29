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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.3/splitrail-v3.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "b3d28420de2f7124e47abe287295b8d45684b73866f40eba74b1a8fad938dc74"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.3/splitrail-v3.10.3-x86_64-apple-darwin.tar.gz"
      sha256 "2a2d33b6206b58b92e1642062c00188c2e28c4a01106b43b6aaac41fa9af9a50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.3/splitrail-v3.10.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bf6dac314df248ad53841814071c68228ca11981bb2921914969deaf75db4564"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.3/splitrail-v3.10.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15e0f03d14f7f5d3eee91cf2ae453306b4170474d946f4edb3f2ef7f086ed213"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
