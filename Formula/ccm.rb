class Ccm < Formula
  desc "CLI toolkit for managing multiple Claude Code accounts, sessions, and health"
  homepage "https://github.com/dr5hn/ccm"
  url "https://github.com/dr5hn/ccm/archive/refs/tags/v4.2.1.tar.gz"
  sha256 "930c6fd8e5aaf25347b707b31c8d3200121fa5e3ba92f161fc2e96e7ce64ae8f"
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
