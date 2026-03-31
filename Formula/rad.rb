class Rad < Formula
  desc "Terminal radio player powered by RadioBrowser"
  homepage "https://github.com/osmo-systems/rad"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5c18614af16066e0bcb9f7b3707df580289dfdf42bac9f068aacf2d99c0ccd5a"
    end

    on_intel do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e3964104b16e5e410f5f86894207c60bcaeb43eb6e78dd5d10ba67c83f28e43a"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6b0a385a57a8c4bb7c77b65f02eeb2bd3ddb80fdfe12b69bfb4d719c6202c74"
    end

    on_intel do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "494730c71f7810c8a7ee3c4b687739a9e2c52caeb48291b79ff4e02cc7183928"
    end
  end

  def install
    bin.install "rad"
  end

  test do
    assert_match "rad - Radio Player", shell_output("#{bin}/rad --help")
  end
end
