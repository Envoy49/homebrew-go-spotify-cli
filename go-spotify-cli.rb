class GoSpotifyCli < Formula
  desc "A CLI tool for interacting with Spotify"
  homepage "https://github.com/Envoy49/go-spotify-cli"
  url "https://github.com/Envoy49/go-spotify-cli/releases/download/v1.0.77/go-spotify-cli_darwin_arm64.tar.gz"
  sha256 "bb051670b5ecaf3b6aa1adcd8bb5108e057a53ad6dc1914129a44804d247e4c0"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "go-spotify-cli", "./cmd/gsc"
    bin.install "go-spotify-cli"
  end


  test do
    system "#{bin}/go-spotify-cli", "--version"
  end
end
