class Wherry < Formula
  desc "Delegate coding agent tasks to receivers on other compute over Kafka"
  homepage "https://benemon.github.io/wherry/"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.21/wherry_v0.1.0-rc.21_darwin_arm64.tar.gz"
      sha256 "c53d24cd988f5f9a351840169fa23128828655e3a834cd83e0a01ea7a048db98"
    end
    on_intel do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.21/wherry_v0.1.0-rc.21_darwin_amd64.tar.gz"
      sha256 "e3245284439fec5ce2554316b10f6d91fc23907c637c43e184b81431433fadcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.21/wherry_v0.1.0-rc.21_linux_arm64.tar.gz"
      sha256 "eaccae9f90dab9d80f84f1d77a8059f889cf530249fe737a7df81cb306034cd6"
    end
    on_intel do
      url "https://github.com/benemon/wherry/releases/download/v0.1.0-rc.21/wherry_v0.1.0-rc.21_linux_amd64.tar.gz"
      sha256 "50043431d4b376f249c48385d4ec14818ba2c8c49bae538a647260621215acd6"
    end
  end

  def install
    bin.install "wherry"
  end

  test do
    assert_match "version=v#{version}", shell_output("#{bin}/wherry version")
  end
end
