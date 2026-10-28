class Wherry < Formula
  desc "Delegate coding agent tasks to receivers on other compute over Kafka"
  homepage "https://benemon.github.io/wherry/"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.22/wherry_v0.1.0-rc.22_darwin_arm64.tar.gz"
      sha256 "63f9fc92cfdd6a02a66279fb782ea0bca1057f3c16a933ea5f0be6f97c2cdeb1"
    end
    on_intel do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.22/wherry_v0.1.0-rc.22_darwin_amd64.tar.gz"
      sha256 "f6094a85ac84987b60a5b1bb3f882fd98c4c0b043bc5a6c7097160da90d414c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.22/wherry_v0.1.0-rc.22_linux_arm64.tar.gz"
      sha256 "a1b882cfd29424a691a24676560aa4fd119b35ffa6a4f4481967b34f5a7a4f06"
    end
    on_intel do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.22/wherry_v0.1.0-rc.22_linux_amd64.tar.gz"
      sha256 "96d3442115b0c87620e36e7b1f23408e2f65285aaa501b57b5a50c16424d31fe"
    end
  end

  def install
    bin.install "wherry"
  end

  test do
    assert_match "version=v#{version}", shell_output("#{bin}/wherry version")
  end
end
