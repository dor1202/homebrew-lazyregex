class Lazyregex < Formula
  include Language::Python::Virtualenv

  url "https://github.com/dor1202/lazyregex/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "33ea67fc1d7703b3705b99dddd89f606cee1509023da84729058e175e8158042"
  desc "TUI to test and develop regexes"
  homepage "https://github.com/dor1202/lazyregex"
  version "0.3.0"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Create a virtual environment
    venv = virtualenv_create(libexec, "python3")

    # Install dependencies from requirements.txt
    venv.pip_install "rich==13.9.4"
    venv.pip_install "typer==0.9.0"
    venv.pip_install "textual==1.0.0"
    venv.pip_install "colorama==0.4.4"
    venv.pip_install "click==8.1.8"
    venv.pip_install "typing-extensions==4.12.2"
    venv.pip_install "platformdirs==4.3.6"

    # Install the main package
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/lazyregex", "--help"
  end
end
