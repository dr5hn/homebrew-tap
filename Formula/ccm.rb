class Ccm < Formula
  desc "CLI toolkit for managing multiple Claude Code accounts, sessions, and health"
  homepage "https://github.com/dr5hn/ccm"
  url "https://github.com/dr5hn/ccm/archive/refs/tags/v4.2.1.tar.gz"
  sha256 "42aa0513b6d7344e6a7a6821ece235ef777ae380d096c5704ada6103e55a4914"
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
