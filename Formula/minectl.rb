# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Minectl < Formula
  desc "minectl️️ 🗺️ is a cli for creating Minecraft (java or bedrock) server on different cloud provider."
  homepage "https://github.com/dirien/minectl"
  version "0.7.0"
  license "Apache License 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dirien/minectl/releases/download/v0.7.0/minectl_0.7.0_darwin_amd64.tar.gz"
      sha256 "df6ad4c88b282847214278e09d43c8a8c6e85b1003730e35e7b319b20ab4a3a8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/dirien/minectl/releases/download/v0.7.0/minectl_0.7.0_darwin_arm64.tar.gz"
      sha256 "20ea72bf308218ef2656017e3e028aba3886ed81f90616009e6e903f1a2db8b7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dirien/minectl/releases/download/v0.7.0/minectl_0.7.0_linux_amd64.tar.gz"
      sha256 "2158e4d829c2fd30ff20ead830736b8d227afbbbff245211f554f9b8448934c4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dirien/minectl/releases/download/v0.7.0/minectl_0.7.0_linux_arm64.tar.gz"
      sha256 "015dafba89ff5b0a402fc791bcad92b7f7d51a557307678a32cef2146bfe4d4f"
    end
  end

  def install
    bin.install "minectl"
  end
end
