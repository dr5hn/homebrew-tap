class Ccm < Formula
  desc "CLI toolkit for managing multiple Claude Code accounts, sessions, and health"
  homepage "https://github.com/dr5hn/ccm"
  url "https://github.com/dr5hn/ccm/archive/refs/tags/v4.2.2.tar.gz"
  sha256 "e574888a97f165d7dfd07e8b6a2fc387a4c881880a4f9c2e040c847d79b425bf"
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
