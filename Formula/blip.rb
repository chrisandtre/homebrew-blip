class Blip < Formula
  desc "Mac side of Blip: read and send iMessage from Windows or Linux"
  homepage "https://github.com/chrisandtre/blip-windows"
  url "https://github.com/chrisandtre/blip-windows/archive/e35dd8946e4dee493ed2c17969fa2bcf11f45f11.tar.gz"
  version "0.3.0"
  sha256 "f0dd9949399b4a53824ac86f5980a45a1b9d264ebf93982fd74403a88bbec22c"
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
