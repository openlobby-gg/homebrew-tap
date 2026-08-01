class Lobby < Formula
  desc "OpenLobby agent — tunnel local game servers to the edge"
  homepage "https://openlobby.gg"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.openlobby.gg/agent/v0.1.0/lobby-darwin-arm64.tar.gz"
      sha256 "9acf0391f95f5e90a4e2a9b3b5cba34d0b3c7c368ef4e782aeda8f524328bda2"
    end
    on_intel do
      url "https://downloads.openlobby.gg/agent/v0.1.0/lobby-darwin-amd64.tar.gz"
      sha256 "5e2a3fb80fb67ea89970f58e9ab1de2ef160df88d89287245909d7e68c35188a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.openlobby.gg/agent/v0.1.0/lobby-linux-arm64.tar.gz"
      sha256 "7e3be017c6513445d358b12c9f874683af850c60a5e87c067a085d7e45fee698"
    end
    on_intel do
      url "https://downloads.openlobby.gg/agent/v0.1.0/lobby-linux-amd64.tar.gz"
      sha256 "6afa2fec2b72177f80d9fe2bf12859f7a199f224a7eedcd801de672427b02f6b"
    end
  end

  def install
    bin.install "lobby"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lobby --version")
  end
end
