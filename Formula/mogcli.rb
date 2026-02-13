class Mogcli < Formula
  desc "Microsoft 365 in your terminal"
  homepage "https://github.com/jaredpalmer/mogcli"
  license "MIT"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jaredpalmer/mogcli/releases/download/v#{version}/mogcli_#{version}_darwin_arm64.tar.gz"
      sha256 "REPLACE_ME_DARWIN_ARM64"
    else
      url "https://github.com/jaredpalmer/mogcli/releases/download/v#{version}/mogcli_#{version}_darwin_amd64.tar.gz"
      sha256 "REPLACE_ME_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jaredpalmer/mogcli/releases/download/v#{version}/mogcli_#{version}_linux_arm64.tar.gz"
      sha256 "REPLACE_ME_LINUX_ARM64"
    else
      url "https://github.com/jaredpalmer/mogcli/releases/download/v#{version}/mogcli_#{version}_linux_amd64.tar.gz"
      sha256 "REPLACE_ME_LINUX_AMD64"
    end
  end

  def install
    bin.install "mog"
  end

  test do
    assert_match "mog", shell_output("#{bin}/mog --help")
  end
end
