class Doctopdf < Formula
  include Language::Python::Virtualenv

  desc "Offline batch .doc/.docx to PDF converter using Microsoft Word on macOS"
  homepage "https://github.com/HarryW00/doctopdf"
  url "https://github.com/HarryW00/doctopdf/archive/refs/tags/v2.0.2-beta.tar.gz"
  sha256 "f77fd45627d6c9547b9e79c0b3c2f5e6c83b8d100185e4d21571542ea3e69a5d"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/convert-word-pdf --version")
  end
end
