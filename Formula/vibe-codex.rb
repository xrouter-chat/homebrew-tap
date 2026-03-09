class VibeCodex < Formula
  desc "Vibe Codex - AI coding agent powered by XRouter"
  homepage "https://vibe-console.online"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vibe-console.online/releases/vibe-codex-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "6b4b19e362f9079bbf1a3b0fee882ff077cdc421d9a1590f71cab2f8c4650b75"
    else
      url "https://vibe-console.online/releases/vibe-codex-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "6b4b19e362f9079bbf1a3b0fee882ff077cdc421d9a1590f71cab2f8c4650b75"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://vibe-console.online/releases/vibe-codex-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
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
