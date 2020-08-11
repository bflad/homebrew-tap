# This file was generated by GoReleaser. DO NOT EDIT.
class Tfproviderlint < Formula
  desc "Terraform Provider Linter"
  homepage "https://github.com/bflad/tfproviderlint"
  version "0.16.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bflad/tfproviderlint/releases/download/v0.16.0/tfproviderlint_0.16.0_darwin_amd64.tar.gz"
    sha256 "76de562c7b294db615afc336614e49f9148baf1db46c8e43d3a7606fa04a9fb4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bflad/tfproviderlint/releases/download/v0.16.0/tfproviderlint_0.16.0_linux_amd64.tar.gz"
      sha256 "ab0ce13bdf75c7df023bbfc43dea6d676dc48f9df2130a9e3817a9f829ddbb54"
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
