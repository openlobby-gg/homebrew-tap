class Lobby < Formula
  desc "OpenLobby agent — tunnel local game servers to the edge"
  homepage "https://openlobby.gg"
  version "0.0.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.openlobby.gg/agent/v0.0.0/lobby-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://downloads.openlobby.gg/agent/v0.0.0/lobby-darwin-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.openlobby.gg/agent/v0.0.0/lobby-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://downloads.openlobby.gg/agent/v0.0.0/lobby-linux-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "lobby"
  end

  test do
    assert_match version.to_s.delete_prefix("v"), shell_output("#{bin}/lobby --version")
  end
end
