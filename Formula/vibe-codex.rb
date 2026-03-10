class VibeCodex < Formula
  desc "Vibe Codex - AI coding agent powered by XRouter"
  homepage "https://vibe-console.online"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vibe-console.online/releases/vibe-codex-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "9e6931d3c1ff3dd793c3d231ac102657a836d0ea4c4c8dd634ee9d7fc545d128"
    else
      url "https://vibe-console.online/releases/vibe-codex-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "9e6931d3c1ff3dd793c3d231ac102657a836d0ea4c4c8dd634ee9d7fc545d128"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://vibe-console.online/releases/vibe-codex-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
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
