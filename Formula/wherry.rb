class Wherry < Formula
  desc "Delegate coding agent tasks to receivers on other compute over Kafka"
  homepage "https://benemon.github.io/wherry/"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.24/wherry_v0.1.0-rc.24_darwin_arm64.tar.gz"
      sha256 "b027b60337b22cf860397c3f6058f6a030b6f2e146b5fa0f5e92ef173e59facd"
    end
    on_intel do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.24/wherry_v0.1.0-rc.24_darwin_amd64.tar.gz"
      sha256 "4fbcb2fd5023f84edab9d4af39d4ea5619cc7b5e78b219600a48fc65cdae9687"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.24/wherry_v0.1.0-rc.24_linux_arm64.tar.gz"
      sha256 "f02c1ffdfa0c9c730c63e06127f784210828eb3d084d1bb9566773897cb95923"
    end
    on_intel do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.24/wherry_v0.1.0-rc.24_linux_amd64.tar.gz"
      sha256 "42f42503e0fcd42ad66f89237cfc9eda5db3b8f601f55c3ef0190dbd0d009df4"
    end
  end

  def install
    bin.install "wherry"
  end

  test do
    assert_match "version=v#{version}", shell_output("#{bin}/wherry version")
  end
end
