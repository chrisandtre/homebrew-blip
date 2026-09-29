class Blip < Formula
  desc "Mac side of Blip: read and send iMessage from Windows or Linux"
  homepage "https://github.com/chrisandtre/blip-windows"
  url "https://github.com/chrisandtre/blip-windows/archive/86e1e6e2013a817f81b98d80a9672c02dee15fa3.tar.gz"
  version "0.3.0"
  sha256 "8862df39b56098ec831ec3f29d7531b2789679e5856f1515e22a178e0d70fb5c"
  license "MIT"
  head "https://github.com/chrisandtre/blip-windows.git", branch: "windows-client"

  depends_on :macos

  def install
    libexec.install Dir["bridge/mac/*"]
    bin.install_symlink libexec/"blip"
  end

  def caveats
    <<~EOS
      Next, run:
        blip setup
      It links the bridge tools for your account, walks you through the Mac's
      permissions, and shows a code to pair your PC with.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blip --version")
  end
end
