class Doctopdf < Formula
  include Language::Python::Virtualenv

  desc "Offline batch .doc/.docx to PDF converter using Microsoft Word on macOS"
  homepage "https://github.com/HarryW00/doctopdf"
  url "https://github.com/HarryW00/doctopdf/archive/refs/tags/v2.1.tar.gz"
  sha256 "ca5e1d4b33b5b988b2dfc80a7c7cd3f5e24c97939751adf779fe9a818572f3dd"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/convert-word-pdf --version")
  end
end
