class Jaavis < Formula
  desc "One-Army AI Orchestrator & Skill Library"
  homepage "https://github.com/ponli550/JaavisCLI"
  url "https://github.com/ponli550/JaavisCLI/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c111d60dbd45992a47d530724653329053cf8a4a2ee47ac813d2d5a43315fdc8"
  license "MIT"

  depends_on "python@3.11"
  depends_on "git"

  def install
    # Install core script
    bin.install "jaavis_core.py" => "jaavis"

    # Install support files
    pkgshare.install "logo.md"
    pkgshare.install "library"
  end

  def post_install
    # Initialize config if not exists
    # Note: Homebrew runs this as the user, but we should be careful with $HOME access
  end

  test do
    system "#{bin}/jaavis", "--help"
  end
end
