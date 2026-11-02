class Lockstep < Formula
  desc "Hermetic CMake dependencies with a lock file and content hashes"
  homepage "https://github.com/jamierpond/lockstep"
  version "0.4.1"

  on_macos do
    url "https://github.com/jamierpond/lockstep/releases/download/v0.4.1/lockstep-0.4.1-macos-arm64"
    sha256 "e3b4b34a49686acd4cae97ad896e5c284dbf530d5d025746ea19ee3b8ef7d10d"
  end

  on_linux do
    on_intel do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.4.1/lockstep-0.4.1-linux-x64"
      sha256 "8e65a0892ad6e07f69d70479477f711992b85e2d4d92aa392d4f79cc43c51412"
    end
    on_arm do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.4.1/lockstep-0.4.1-linux-arm64"
      sha256 "f78bdc13f735517ced1bc7fb51089b5be9c2c23430208439d2f83667d8b73b05"
    end
  end

  def install
    bin.install Dir["lockstep-*"].first => "lockstep"
  end

  test do
    assert_match "lockstep", shell_output("#{bin}/lockstep --help")
  end
end
