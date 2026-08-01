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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.0/splitrail-v3.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "d9bb1eeda49e161ca1a19fdc8572af53ae4edc7e0ebfe841a4a286dd3d20b2c2"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.0/splitrail-v3.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "cdf54502e2a24e1098bc0eb6d23213533f1b2980261ed59973a05f00be74ffa1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.0/splitrail-v3.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "27ceace6c1383d3cc85c49419750033429a2ab6893e506966dd28a58beb5760a"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.7.0/splitrail-v3.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4286f5c9faf5ba51f8507aae5f1dfce200325cc02080bd87302fc3eaf23dfa93"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
