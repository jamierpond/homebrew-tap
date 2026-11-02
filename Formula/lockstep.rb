class Lockstep < Formula
  desc "Hermetic CMake dependencies with a lock file and content hashes"
  homepage "https://github.com/jamierpond/lockstep"
  version "0.2.0"

  on_macos do
    url "https://github.com/jamierpond/lockstep/releases/download/v0.2.0/lockstep-0.2.0-macos-arm64"
    sha256 "f4f495a5fb1adc6aab9be264153bc99039f88c5755a88d279cc2d3c95d936f79"
  end

  on_linux do
    on_intel do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.2.0/lockstep-0.2.0-linux-x64"
      sha256 "3c515178a6559aaa1bebc5b0c5878faf3a0635fb6dbdb10d9a15219b4a767feb"
    end
    on_arm do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.2.0/lockstep-0.2.0-linux-arm64"
      sha256 "0c99d632c7869b3e6ebc1ff73f0d12aad608ba7bd3195f7760701f41a25cb10b"
    end
  end

  def install
    bin.install Dir["lockstep-*"].first => "lockstep"
  end

  test do
    assert_match "lockstep", shell_output("#{bin}/lockstep --help")
  end
end
