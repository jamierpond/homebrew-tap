class Lockstep < Formula
  desc "Hermetic CMake dependencies with a lock file and content hashes"
  homepage "https://github.com/jamierpond/lockstep"
  version "0.3.0"

  on_macos do
    url "https://github.com/jamierpond/lockstep/releases/download/v0.3.0/lockstep-0.3.0-macos-arm64"
    sha256 "b67c0ded9302edf153fa576f00c4ce93340fd57b06d4c6effc029d2707101193"
  end

  on_linux do
    on_intel do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.3.0/lockstep-0.3.0-linux-x64"
      sha256 "52397b392ac4a7a364a4a8f1dc0ff189e728d297790527384f5c959561d6e66d"
    end
    on_arm do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.3.0/lockstep-0.3.0-linux-arm64"
      sha256 "d919da1823f91a0c2663ad9480b4c267e37536ff06147a547fa6a08664702585"
    end
  end

  def install
    bin.install Dir["lockstep-*"].first => "lockstep"
  end

  test do
    assert_match "lockstep", shell_output("#{bin}/lockstep --help")
  end
end
