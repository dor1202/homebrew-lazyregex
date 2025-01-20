class Moch < Formula
  include Language::Python::Virtualenv

  desc "TUI to test and develop regexes"
  homepage "https://github.com/dor1202/moch"
  url "https://github.com/dor1202/moch/archive/refs/tags/v0.2.7.tar.gz"
  version "0.2.7"
  sha256 "93d41199663314f0d2b32268cd9d79c58f7dc51d5f0b69c1215a252419890b7a"
  license "MIT"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "Moch version"
  end
end
