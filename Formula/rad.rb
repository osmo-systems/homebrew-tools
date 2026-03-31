class Rad < Formula
  desc "Terminal radio player powered by RadioBrowser"
  homepage "https://github.com/osmo-systems/rad"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ff46d424f78868887b3853240bec3013c4fecca300285a831dcd191a1e8ce529"
    end

    on_intel do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "13ce222db7a415b39d440b835d57c0d489242b15e4b2ee1c014d13e7059fc42c"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d259827483b2901adb7ec9ba5e5f03691741d67f3a89f58fc74f172c7d4ede3"
    end

    on_intel do
      url "https://github.com/osmo-systems/rad/releases/download/v#{version}/rad-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dccde22ff42b68a3cad1af6c4366aeb7b8a573f28af150bcfd90b88e997db874"
    end
  end

  def install
    bin.install "rad"
  end

  test do
    assert_match "rad - Radio Player", shell_output("#{bin}/rad --help")
  end
end
