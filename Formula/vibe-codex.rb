class VibeCodex < Formula
  desc "Vibe Codex - AI coding agent powered by XRouter"
  homepage "https://vibe-console.online"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vibe-console.online/releases/vibe-codex-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "11c6c322a4da505923bda8c3226cba6fa24159ac828a489d3370684448d1e5dd"
    else
      url "https://vibe-console.online/releases/vibe-codex-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "11c6c322a4da505923bda8c3226cba6fa24159ac828a489d3370684448d1e5dd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://vibe-console.online/releases/vibe-codex-0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_SHA256"
    end
  end

  def install
    bin.install "vibe-codex"
  end

  test do
    assert_match "codex", shell_output("#{bin}/vibe-codex --version 2>&1", 0)
  end
end
