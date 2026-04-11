class Rad < Formula
  desc "Terminal radio player powered by RadioBrowser"
  homepage "https://github.com/osmo-systems/rad"
  version "0.3.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "62a71304bad2a3c2eefe7f0c96e29d31a8840b0f8d22a6536a54f0fa58c11e82"
    end

    on_intel do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6d3ee396921af2aaa2d21683175a3000485993940ddbdfbde281b33a5658f2e9"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b6798ae194f130afa867a7db0b5f04d816f416535c994b27df8ad3a5b2dda3e"
    end

    on_intel do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ec480dbc7850e160b27df025daa6f4bda0149e8d2cb3bd8a491d5b609c3b6da"
    end
  end

  def install
    bin.install "rad"
  end

  test do
    assert_match "rad - Radio Player", shell_output("#{bin}/rad --help")
  end
end
