class Doctopdf < Formula
  include Language::Python::Virtualenv

  desc "Offline batch .doc/.docx to PDF converter using Microsoft Word on macOS"
  homepage "https://github.com/HarryW00/doctopdf"
  url "https://github.com/HarryW00/doctopdf/archive/refs/tags/v2.0.3-beta.tar.gz"
  sha256 "b6cc7580ba36ace09b78da5295b9494206200fa874210a18699798e983223ce9"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/convert-word-pdf --version")
  end
end
