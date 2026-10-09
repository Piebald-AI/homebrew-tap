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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.11.1/splitrail-v3.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "f04ee01a41431cc477da06a72a4432de5e22f9572bcdecb0aaf4495b0ada403e"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.11.1/splitrail-v3.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "55ccfb9a21f9e4c48b3206c2bac9e7e97097366a64a5c6fa411aa0a54eeeec49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.11.1/splitrail-v3.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28cf4f9fefc7799b4f3285ffeb3e088b9eb33a0dfc56b3d885008a7c690c4d5c"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.11.1/splitrail-v3.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "452ffe54f6530195e51afbfd8c90147809b5cf4e111357c67bc9ad74f6d0e1ce"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
