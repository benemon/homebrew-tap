class Wherry < Formula
  desc "Delegate coding agent tasks to receivers on other compute over Kafka"
  homepage "https://benemon.github.io/wherry/"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.23/wherry_v0.1.0-rc.23_darwin_arm64.tar.gz"
      sha256 "a3f7eb07104f3f665344899311e3192c6333a93604116f62d457350b364e5804"
    end
    on_intel do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.23/wherry_v0.1.0-rc.23_darwin_amd64.tar.gz"
      sha256 "8a071f7a6a7db583b280e1f0194f217787f5a705e72be4291aefd0447d7cdec4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.23/wherry_v0.1.0-rc.23_linux_arm64.tar.gz"
      sha256 "4f3498ac7dd20c38bc9224ab481713ed0d9ccd3ca324e260f88e274687082087"
    end
    on_intel do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.23/wherry_v0.1.0-rc.23_linux_amd64.tar.gz"
      sha256 "b7da6956e8ffc61b63487ddb7388e48069336946eec0d91d88c5f91ac96db68b"
    end
  end

  def install
    bin.install "wherry"
  end

  test do
    assert_match "version=v#{version}", shell_output("#{bin}/wherry version")
  end
end
