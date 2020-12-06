# This file was generated by GoReleaser. DO NOT EDIT.
class Tfproviderlint < Formula
  desc "Terraform Provider Linter"
  homepage "https://github.com/bflad/tfproviderlint"
  version "0.21.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bflad/tfproviderlint/releases/download/v0.21.0/tfproviderlint_0.21.0_darwin_amd64.tar.gz"
    sha256 "1da48f60acc96c587df3cd2402974994b34a1c213601d63996875ffe11888f77"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bflad/tfproviderlint/releases/download/v0.21.0/tfproviderlint_0.21.0_linux_amd64.tar.gz"
    sha256 "191479aaf31bbd8811ed22eea56edb0fbf84e85cf45a4524b725ebb8ab088ea8"
  end

  depends_on "go"

  def install
    bin.install "tfproviderlint"
  end

  test do
    system "#{bin}/tfproviderlint -V"
  end
end
