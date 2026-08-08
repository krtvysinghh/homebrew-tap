class Esprit < Formula
  desc "Modular AI and filesystem intelligence workspace engine"
  homepage "https://github.com/krtvysinghh/Esprit"
  url "https://github.com/krtvysinghh/Esprit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "SKIP"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "apps/esprit-cli", "--root", prefix
  end

  test do
    system "#{bin}/esprit", "--version"
  end
end
