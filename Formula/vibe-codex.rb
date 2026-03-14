class VibeCodex < Formula
  desc "Vibe Codex - AI coding agent powered by XRouter"
  homepage "https://vibe-console.online"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vibe-console.online/releases/vibe-codex-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "54e2a7888a743566753a85d7fdd2e6825684bc39b50496e66616edc58f3819d0"
    else
      url "https://vibe-console.online/releases/vibe-codex-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "54e2a7888a743566753a85d7fdd2e6825684bc39b50496e66616edc58f3819d0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://vibe-console.online/releases/vibe-codex-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_SHA256"
    end
  end

  def install
    bin.install "vibe-codex"
  end

  test do
    assert_match "vibe-codex", shell_output("#{bin}/vibe-codex --version 2>&1", 0)
  end
end
