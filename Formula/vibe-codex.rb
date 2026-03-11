class VibeCodex < Formula
  desc "Vibe Codex - AI coding agent powered by XRouter"
  homepage "https://vibe-console.online"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vibe-console.online/releases/vibe-codex-0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "578356156133ed6995b9381e95bba3b8bce3c04bddc052d0a9ca94f4a85d2e94"
    else
      url "https://vibe-console.online/releases/vibe-codex-0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "578356156133ed6995b9381e95bba3b8bce3c04bddc052d0a9ca94f4a85d2e94"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://vibe-console.online/releases/vibe-codex-0.1.9-x86_64-unknown-linux-gnu.tar.gz"
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
