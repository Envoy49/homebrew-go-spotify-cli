class GoSpotifyCli < Formula
  desc "A CLI tool for interacting with Spotify"
  homepage "https://github.com/Envoy49/go-spotify-cli"
  url "https://github.com/Envoy49/go-spotify-cli/archive/refs/tags/v1.0.32.tar.gz"
  sha256 "fa3ecd9de2362ed7cbe4357c70c1540f7d8136deea9e38748ce937eadfc79e7e"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "go-spotify-cli", "./cmd/gsc"
    bin.install "go-spotify-cli"
  end


  test do
    system "#{bin}/go-spotify-cli", "--version"
  end
end
