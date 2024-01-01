class GoSpotifyCli < Formula
  desc "A CLI tool for interacting with Spotify"
  homepage "https://github.com/Envoy49/go-spotify-cli"
  url "https://github.com/Envoy49/go-spotify-cli/archive/refs/tags/v1.0.39.tar.gz"
  sha256 "a64e773469e77227ceb4a85a86ed8c9771640b0f3d75d0649a47ae9d7fed6ce4"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "go-spotify-cli", "./cmd/gsc"
    bin.install "go-spotify-cli"
  end


  test do
    system "#{bin}/go-spotify-cli", "--version"
  end
end
