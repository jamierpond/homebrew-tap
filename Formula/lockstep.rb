class Lockstep < Formula
  desc "Hermetic CMake dependencies with a lock file and content hashes"
  homepage "https://github.com/jamierpond/lockstep"
  version "0.4.2"

  on_macos do
    url "https://github.com/jamierpond/lockstep/releases/download/v0.4.2/lockstep-0.4.2-macos-arm64"
    sha256 "1efc72ac4532dfa618e926a19682fe2fa3ae74564a4647634d0d7b5371018209"
  end

  on_linux do
    on_intel do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.4.2/lockstep-0.4.2-linux-x64"
      sha256 "6af1d19f10d6cc13c7147e36fe70acfc27928ae5e7bffb8616147f971bffcd85"
    end
    on_arm do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.4.2/lockstep-0.4.2-linux-arm64"
      sha256 "3cafd809c668a038dc2135b9e5de1e3b35d7c0b4074a3d828cb27a2395357bad"
    end
  end

  def install
    bin.install Dir["lockstep-*"].first => "lockstep"
  end

  test do
    assert_match "lockstep", shell_output("#{bin}/lockstep --help")
  end
end
