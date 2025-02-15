class LazyRegex < Formula
  include Language::Python::Virtualenv

  url "https://github.com/dor1202/lazyregex/archive/refs/tags/v0.2.8.tar.gz"
  sha256 "952ec645e868f3092bf93c5ef9a53e4cd8d879a875cca615b4ede5c3249bb052"
  desc "TUI to test and develop regexes"
  homepage "https://github.com/dor1202/lazyregex"
  version "0.2.8"
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
