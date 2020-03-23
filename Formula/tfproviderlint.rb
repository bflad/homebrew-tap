# This file was generated by GoReleaser. DO NOT EDIT.
class Tfproviderlint < Formula
  desc "Terraform Provider Linter"
  homepage "https://github.com/bflad/tfproviderlint"
  version "0.13.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bflad/tfproviderlint/releases/download/v0.13.0/tfproviderlint_0.13.0_darwin_amd64.tar.gz"
    sha256 "db5c9d4307a03eccc89637ec1d50dacaf10add9102a687c6e840059025ae7852"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bflad/tfproviderlint/releases/download/v0.13.0/tfproviderlint_0.13.0_linux_amd64.tar.gz"
      sha256 "1f4f2fee7dd5f08c2707b7477e96d6d0918cfc9fb71f178115961499acb6ac4d"
    end
  end
  
  depends_on "go"

  def install
    bin.install "tfproviderlint"
  end

  test do
    system "#{bin}/tfproviderlint -V"
  end
end
