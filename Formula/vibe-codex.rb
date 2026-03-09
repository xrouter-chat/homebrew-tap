class VibeCodex < Formula
  desc "Vibe Codex - AI coding agent powered by XRouter"
  homepage "https://vibe-console.online"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vibe-console.online/releases/vibe-codex-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "294635d44b59fde9ab10853b4c2a08874531f178fa88e04ef3217c42f63006bd"
    else
      url "https://vibe-console.online/releases/vibe-codex-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "294635d44b59fde9ab10853b4c2a08874531f178fa88e04ef3217c42f63006bd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://vibe-console.online/releases/vibe-codex-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_SHA256"
    end
  end

  def install
    bin.install "codex" => "vibe-codex"
  end

  test do
    assert_match "codex", shell_output("#{bin}/codex --version 2>&1", 0)
  end
end
