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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.6.1/splitrail-v3.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "4324457507cb13de5ce1118055275231062a7ff3d3e182a4294350c7a5887061"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.6.1/splitrail-v3.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "28fa63c0ebdced626930257e79f0d72ae8b9a71e6ff34f2fc445e8e91dda6b63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.6.1/splitrail-v3.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "974855b8c9e51cbc4845f1633aa88762f94e4fb6eda59533e17d2ecd66378d64"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.6.1/splitrail-v3.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d257b96395f4a3b0dcdd9d976d1cdd6397f5c23b06eb486956ef0efaac2ce4e"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
