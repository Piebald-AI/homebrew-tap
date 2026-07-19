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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.6.0/splitrail-v3.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "076da9fd3075cd936f442445635e5cd2302b2289b1aa3886b55c9715b6c47b0c"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.6.0/splitrail-v3.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "6f5b4b3ae3cc8b018e6d7ed46000d3544fefe18ce9f5cbbc5c61162f1673a9df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.6.0/splitrail-v3.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca080dd24d8871489396a685c75d1b649d0870a21e4f610501917db2922cb93c"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.6.0/splitrail-v3.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6acda84def2162afc0dd4b4b1e65bf17481fd135a59babeeea3633a7285e4a4a"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
