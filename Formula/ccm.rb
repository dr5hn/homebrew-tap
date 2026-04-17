class Ccm < Formula
  desc "CLI toolkit for managing multiple Claude Code accounts, sessions, and health"
  homepage "https://github.com/dr5hn/ccm"
  url "https://github.com/dr5hn/ccm/archive/refs/tags/v4.1.0.tar.gz"
  sha256 "c32217d074bbc3130b129d58e14c5a60aeba486fafba03dabb257912abe9f5fb"
  license "MIT"

  depends_on "bash" => "4.4:"
  depends_on "jq"

  def install
    bin.install "ccm.sh" => "ccm"
  end

  test do
    assert_match "ccm (Claude Code Manager)", shell_output("#{bin}/ccm version")
  end
end
