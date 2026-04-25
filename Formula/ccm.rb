class Ccm < Formula
  desc "CLI toolkit for managing multiple Claude Code accounts, sessions, and health"
  homepage "https://github.com/dr5hn/ccm"
  url "https://github.com/dr5hn/ccm/archive/refs/tags/v4.2.0.tar.gz"
  sha256 "6535b9628ba0823cb968ecbadb24c1e49bf68435acdd4d54d9bc5f418623d32b"
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
