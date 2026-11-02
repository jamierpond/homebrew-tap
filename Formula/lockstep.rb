class Lockstep < Formula
  desc "Hermetic CMake dependencies with a lock file and content hashes"
  homepage "https://github.com/jamierpond/lockstep"
  version "0.4.3"

  on_macos do
    url "https://github.com/jamierpond/lockstep/releases/download/v0.4.3/lockstep-0.4.3-macos-arm64"
    sha256 "56a67bdc84acbf112e4bf4cd7f02518afb5c15bb5add3476039c227d4444d704"
  end

  on_linux do
    on_intel do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.4.3/lockstep-0.4.3-linux-x64"
      sha256 "7ce28b25ca7500817538c7084554c2da845a30d45a89feb61af002aaf6919504"
    end
    on_arm do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.4.3/lockstep-0.4.3-linux-arm64"
      sha256 "2de9cc91611e5dc1e02d44c59729c4a5ba0a2dd71c96c6b5d4dbb2bee9042542"
    end
  end

  def install
    bin.install Dir["lockstep-*"].first => "lockstep"
  end

  test do
    assert_match "lockstep", shell_output("#{bin}/lockstep --help")
  end
end
