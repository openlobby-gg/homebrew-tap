class Lobby < Formula
  desc "OpenLobby agent — tunnel local game servers to the edge"
  homepage "https://openlobby.gg"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.openlobby.gg/agent/v0.1.0/lobby-darwin-arm64.tar.gz"
      sha256 "cdbcd0a3c47a0d7c1184f32bb0a314bb95b6832f5758a54b8114291bb83b3040"
    end
    on_intel do
      url "https://downloads.openlobby.gg/agent/v0.1.0/lobby-darwin-amd64.tar.gz"
      sha256 "04e7c6aac40e2b12a2b3f0297233d6e9b3d0331dd2fc6edc52eeff9c09eebada"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.openlobby.gg/agent/v0.1.0/lobby-linux-arm64.tar.gz"
      sha256 "81499de1e55d6a2bdb988fe0ad957d54ef16002de0d40cfdc465ca6242cd4029"
    end
    on_intel do
      url "https://downloads.openlobby.gg/agent/v0.1.0/lobby-linux-amd64.tar.gz"
      sha256 "3b925a63aabf9fe1efa81101bad81374110acd562118a24cdc1dc06f533cd9ac"
    end
  end

  def install
    bin.install "lobby"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lobby --version")
  end
end
