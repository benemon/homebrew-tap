class Wherry < Formula
  desc "Delegate coding agent tasks to receivers on other compute over Kafka"
  homepage "https://benemon.github.io/wherry/"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.20/wherry_v0.1.0-rc.20_darwin_arm64.tar.gz"
      sha256 "5a58633b820bb652aebd244e2bbd853d1e07187a2fe8f1009029c24cc3372c12"
    end
    on_intel do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.20/wherry_v0.1.0-rc.20_darwin_amd64.tar.gz"
      sha256 "234bac8eaf61fb77cb9ab33c36788c2067a2c2ee6e2d5465a04e9313e66c2dbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.20/wherry_v0.1.0-rc.20_linux_arm64.tar.gz"
      sha256 "d0e585e72c2306fc05a55ab213114625ebba99cea1de8894fb0fbd23b363fcf1"
    end
    on_intel do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.20/wherry_v0.1.0-rc.20_linux_amd64.tar.gz"
      sha256 "c926ddadb4b4b1c56df5ae74e1a27f70e1c741320ae139b437bf635ed242fab2"
    end
  end

  def install
    bin.install "wherry"
  end

  test do
    assert_match "version=v#{version}", shell_output("#{bin}/wherry version")
  end
end
