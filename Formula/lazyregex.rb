class Lazyregex < Formula
  include Language::Python::Virtualenv

  url "https://github.com/dor1202/lazyregex/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "33ea67fc1d7703b3705b99dddd89f606cee1509023da84729058e175e8158042"
  desc "TUI to test and develop regexes"
  homepage "https://github.com/dor1202/lazyregex"
  version "0.3.0"
  license "MIT"

  depends_on "python@3.13"

  resource "textual" do
    url "https://github.com/Textualize/textual/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "6b397dc54e018ef2e95243f12d7afde0a4d33a9d454c17f2ed33d6ca8a0f5200"
  end

  resource "typer" do
    url "https://github.com/fastapi/typer/archive/refs/tags/0.9.0.tar.gz"
    sha256 "64cec3f6cf47a0059b5c0f79ca04d2791101a9013c6e189590890fe796c7f8ec"
  end

  resource "click" do
    url "https://github.com/pallets/click/archive/refs/tags/8.1.8.tar.gz"
    sha256 "33b16b4899d3deda7be154c0be415d898511abf928c988972cd97c4d90444a18"
  end

  resource "typing-extensions" do
    url "https://github.com/python/typing_extensions/archive/refs/tags/4.12.2.tar.gz"
    sha256 "bf6f56b36d8bc9156e518eb1cc37a146284082fa53522033f772aefbecfd15fc"
  end

  resource "rich" do
    url "https://github.com/Textualize/rich/archive/refs/tags/v13.9.4.tar.gz"
    sha256 "22bfd7f24f6107ed222f6ab0cee6f0016e22cb6f91144b90c65b112663c7477c"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/source/p/platformdirs/platformdirs-4.3.6.tar.gz"
    sha256 "357fb2acbc885b0419afd3ce3ed34564c13c9b95c89360cd9563f73aa5e2b907"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/lazyregex", "--help"
  end
end
