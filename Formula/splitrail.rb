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
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.13.0/splitrail-v3.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "90615e14e6a83101e73edc5efe613ad989a9533a9586fdeccefd68a332a3023e"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.13.0/splitrail-v3.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "3eda7fcee4b3eafe40b03230aa560ba02193a76f099e8c28316a2723e8e3f80e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.13.0/splitrail-v3.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66d0cfb403e7e4d9d55b838332c1b3694a9969653ae0946a62c77b483821fc3d"
    end
    on_intel do
      url "https://github.com/Piebald-AI/splitrail/releases/download/v3.13.0/splitrail-v3.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a52d9e6f99e34b9968811db91f68b7b04acf309b62fec937819ca8ce2ac93c5"
    end
  end

  def install
    bin.install "splitrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/splitrail --version")
  end
end
