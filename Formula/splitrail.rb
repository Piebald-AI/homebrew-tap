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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.0/splitrail-v3.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "0c592aa31c2a4daea2561ec84f5a609e9dde0236f57657394ee1361e4a25c552"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.0/splitrail-v3.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "7e55dda7a30dd10508a58faa9b25b795da9f2e251a884e54480c04ce83c550b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.0/splitrail-v3.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78952d6370051f550463714b64fbae344c6f0dc0816f6c7eea7636167e8673f2"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.10.0/splitrail-v3.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d0a184fbb4fbcfff47c5002bbccd20e0be22662b3680b8dbb7381ec1d1ad0b8"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
