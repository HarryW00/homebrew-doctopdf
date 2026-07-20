class Doctopdf < Formula
  include Language::Python::Virtualenv

  desc "Offline batch .doc/.docx to PDF converter using Microsoft Word on macOS"
  homepage "https://github.com/HarryW00/doctopdf"
  url "https://github.com/HarryW00/doctopdf/archive/refs/tags/v2.0.4-beta.tar.gz"
  sha256 "a0151c9896fd3ab14592aedd7fa36081abca2360cebce62875cc525ad2e46562"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/convert-word-pdf --version")
  end
end
