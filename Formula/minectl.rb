# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Minectl < Formula
  desc "minectl️️ 🗺️ is a cli for creating Minecraft (java or bedrock) server on different cloud provider."
  homepage "https://github.com/dirien/minectl"
  version "0.22.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dirien/minectl/releases/download/v0.22.0/minectl_0.22.0_darwin_amd64.tar.gz"
      sha256 "f81662899235e4f9693e0a6f78449dc09f27b07def16740fddf96abc7f58e8e9"

      def install
        bin.install "minectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dirien/minectl/releases/download/v0.22.0/minectl_0.22.0_darwin_arm64.tar.gz"
      sha256 "7577f3840131ec38db47975eaab1aac0bd0aa51a4118172bb8cd5e1dc88a3ba4"

      def install
        bin.install "minectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dirien/minectl/releases/download/v0.22.0/minectl_0.22.0_linux_arm64.tar.gz"
      sha256 "7634df5d5bf70d34434ff0e91a420e60f25901d32e09442210dbdc2771e4f867"

      def install
        bin.install "minectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dirien/minectl/releases/download/v0.22.0/minectl_0.22.0_linux_amd64.tar.gz"
      sha256 "98a5ea03a6b2b678830cbc8c56f0f57285c1702638173059f0de06273283ae6c"

      def install
        bin.install "minectl"
      end
    end
  end
end
