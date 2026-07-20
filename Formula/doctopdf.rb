class Doctopdf < Formula
  include Language::Python::Virtualenv

  desc "Offline batch .doc/.docx to PDF converter using Microsoft Word on macOS"
  homepage "https://github.com/HarryW00/doctopdf"
  url "https://github.com/HarryW00/doctopdf/archive/refs/tags/v2.1.tar.gz"
  sha256 "a42bcacf1273d68550c540daddf28678f7749295962fb543dfdbae20e805b3ca"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/convert-word-pdf --version")
  end
end
