class GoSpotifyCli < Formula
  desc "A CLI tool for interacting with Spotify"
  homepage "https://github.com/Envoy49/go-spotify-cli"
  url "https://github.com/Envoy49/go-spotify-cli/archive/refs/tags/v1.0.66.tar.gz"
  sha256 "7e29bf1c03e9a1ace6fbc9afdd825a75aae7e9a91ce0e9e9e62e48414b40136b"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "go-spotify-cli", "./cmd/gsc"
    bin.install "go-spotify-cli"
  end


  test do
    system "#{bin}/go-spotify-cli", "--version"
  end
end
