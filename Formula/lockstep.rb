class Lockstep < Formula
  desc "Hermetic CMake dependencies with a lock file and content hashes"
  homepage "https://github.com/jamierpond/lockstep"
  version "0.4.0"

  on_macos do
    url "https://github.com/jamierpond/lockstep/releases/download/v0.4.0/lockstep-0.4.0-macos-arm64"
    sha256 "6cc4f4429ea1ca1ebca8d78619b3d0ad2e5c49e7ff44ac422963ada481c2c892"
  end

  on_linux do
    on_intel do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.4.0/lockstep-0.4.0-linux-x64"
      sha256 "818b012ee8ab5c5deb4c95fecd5e6a14f1ad6258ecfd09e883fd85ab62b68aa0"
    end
    on_arm do
      url "https://github.com/jamierpond/lockstep/releases/download/v0.4.0/lockstep-0.4.0-linux-arm64"
      sha256 "cda66d05c4970698159fb19b516c800f862eba204361735a3547b5ebee8b4bf4"
    end
  end

  def install
    bin.install Dir["lockstep-*"].first => "lockstep"
  end

  test do
    assert_match "lockstep", shell_output("#{bin}/lockstep --help")
  end
end
