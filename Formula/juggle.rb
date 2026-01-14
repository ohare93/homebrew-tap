class Juggle < Formula
  desc "Task management CLI for autonomous AI agent loops"
  homepage "https://github.com/ohare93/juggle"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ohare93/juggle/releases/download/v0.2.0/juggle_0.2.0_darwin_arm64.tar.gz"
      sha256 "b1f3634ed292bcc2cef78d927072455638cfb89330f4e0cd1e06007596313f59"
    else
      url "https://github.com/ohare93/juggle/releases/download/v0.2.0/juggle_0.2.0_darwin_amd64.tar.gz"
      sha256 "7e4623ece30e6241cffbe49964a5bd2f1366dbca957402ce19f3d296caa0ed0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ohare93/juggle/releases/download/v0.2.0/juggle_0.2.0_linux_arm64.tar.gz"
      sha256 "7158f26f586ac7c1d82211b7fbf149cc05f41e16fd399414f4955019b6c8bee8"
    else
      url "https://github.com/ohare93/juggle/releases/download/v0.2.0/juggle_0.2.0_linux_amd64.tar.gz"
      sha256 "98ed3e07ddf5418646b8253d3da86966e1dcbead97803c5614620fea8aab8011"
    end
  end

  def install
    bin.install "juggle"
  end

  test do
    system "#{bin}/juggle", "--version"
  end
end
