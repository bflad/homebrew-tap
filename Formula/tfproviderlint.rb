# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfproviderlint < Formula
  desc "Terraform Provider Linter"
  homepage "https://github.com/bflad/tfproviderlint"
  version "0.28.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bflad/tfproviderlint/releases/download/v0.28.1/tfproviderlint_0.28.1_darwin_amd64.tar.gz"
      sha256 "d8bf144122e0bf56b3e57c0298fe9b0e7c4e08fcf655750cde9c0edc058d9d4a"

      def install
        bin.install "tfproviderlint"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bflad/tfproviderlint/releases/download/v0.28.1/tfproviderlint_0.28.1_linux_amd64.tar.gz"
      sha256 "5f715c2f68b7a430eada0a8392566a5d02d65889c92ab5c169a809bd0d370cb6"

      def install
        bin.install "tfproviderlint"
      end
    end
  end

  depends_on "go"

  test do
    system "#{bin}/tfproviderlint -V"
  end
end
