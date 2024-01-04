class GoSpotifyCli < Formula
  desc "A CLI tool for interacting with Spotify"
  homepage "https://github.com/Envoy49/go-spotify-cli"
  url "https://github.com/Envoy49/go-spotify-cli/archive/refs/tags/v1.0.48.tar.gz"
  sha256 "47868863a696411aa14d1d38f44fb3841ed5a79a786fbe4874853457e5b3b5b2"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "go-spotify-cli", "./cmd/gsc"
    bin.install "go-spotify-cli"
  end


  test do
    system "#{bin}/go-spotify-cli", "--version"
  end
end
