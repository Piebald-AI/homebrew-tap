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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.9/splitrail-v3.5.9-aarch64-apple-darwin.tar.gz"
      sha256 "12cae20309c6efb7a5f6556409ac56d523c0d01f9da8b901ba786cc58da9f407"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.9/splitrail-v3.5.9-x86_64-apple-darwin.tar.gz"
      sha256 "282a454aaeb4d6303c9e242195e09abdce74c61eef6072b434e55f8bf5456a49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.9/splitrail-v3.5.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0c12bc0dad310405cf65f37706e38625a862590fc0b6c27001d8eec84e83195"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.5.9/splitrail-v3.5.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93833070a738896ef623bcb0f2fc64dbaa6ec07bc9f6aab2cf21ad6fcbd06c45"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
