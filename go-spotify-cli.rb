class GoSpotifyCli < Formula
  desc "A CLI tool for interacting with Spotify"
  homepage "https://github.com/Envoy49/go-spotify-cli"
  url "https://github.com/Envoy49/go-spotify-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "22f3592b5a6bffdf306c10cd9fe216ef01fdcf8a1c3256928e61026ef26d06d3"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "go-spotify-cli"
    bin.install "go-spotify-cli"
  end

  test do
    system "#{bin}/go-spotify-cli", "--version"
  end
end
