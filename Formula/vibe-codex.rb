class VibeCodex < Formula
  desc "Vibe Codex - AI coding agent powered by XRouter"
  homepage "https://vibe-console.online"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vibe-console.online/releases/vibe-codex-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ed46431b2b6d0821f56f30e3be2ffd8040929c4cd7485ce7d066b0a1046a5df4"
    else
      url "https://vibe-console.online/releases/vibe-codex-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "ed46431b2b6d0821f56f30e3be2ffd8040929c4cd7485ce7d066b0a1046a5df4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://vibe-console.online/releases/vibe-codex-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
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
