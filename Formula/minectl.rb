# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Minectl < Formula
  desc "minectl️️ 🗺️ is a cli for creating Minecraft (java or bedrock) server on different cloud provider."
  homepage "https://github.com/dirien/minectl"
  version "0.19.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dirien/minectl/releases/download/v0.19.0/minectl_0.19.0_darwin_amd64.tar.gz"
      sha256 "c87cfe2c4ec69c9a2cb36dee0b34a9ffaf680a8ffe792c9c818c047b6d7d81dd"

      def install
        bin.install "minectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dirien/minectl/releases/download/v0.19.0/minectl_0.19.0_darwin_arm64.tar.gz"
      sha256 "4fb51960d167865a88202638a7019ddf0565993b64c34ff0beeac35e0308ae1c"

      def install
        bin.install "minectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dirien/minectl/releases/download/v0.19.0/minectl_0.19.0_linux_arm64.tar.gz"
      sha256 "098acb0e1d85d7ac9da480a8dc1f34afa6e981dd3ba0afd23db5293a43bf90d5"

      def install
        bin.install "minectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dirien/minectl/releases/download/v0.19.0/minectl_0.19.0_linux_amd64.tar.gz"
      sha256 "4a2377b96e6e26f359fd7bf35b1585f8196a7055bd60f62fe48a8adae7035fc1"

      def install
        bin.install "minectl"
      end
    end
  end
end
