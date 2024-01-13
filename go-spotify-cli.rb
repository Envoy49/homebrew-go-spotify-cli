class GoSpotifyCli < Formula
  desc "A CLI tool for interacting with Spotify"
  homepage "https://github.com/Envoy49/go-spotify-cli"
  url "https://github.com/Envoy49/go-spotify-cli/archive/refs/tags/v1.0.65.tar.gz"
  sha256 "3e74dd4ae7be810b6d988fdace845bebe86c77d19d9e59ef5a98e3dbacd50bb9"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "go-spotify-cli", "./cmd/gsc"
    bin.install "go-spotify-cli"
  end


  test do
    system "#{bin}/go-spotify-cli", "--version"
  end
end
