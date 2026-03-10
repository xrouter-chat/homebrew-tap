class VibeCodex < Formula
  desc "Vibe Codex - AI coding agent powered by XRouter"
  homepage "https://vibe-console.online"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vibe-console.online/releases/vibe-codex-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "852b2f13c0bb7a68cbbb2f521a814d746d44639d311358464715801660861b02"
    else
      url "https://vibe-console.online/releases/vibe-codex-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "852b2f13c0bb7a68cbbb2f521a814d746d44639d311358464715801660861b02"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://vibe-console.online/releases/vibe-codex-0.1.6-x86_64-unknown-linux-gnu.tar.gz"
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
