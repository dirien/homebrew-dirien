# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfu < Formula
  desc "tfu is a Terraform helper to update the providers."
  homepage "https://github.com/dirien/tfu"
  version "0.5.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dirien/tfu/releases/download/v0.5.0/tfu_0.5.0_darwin_amd64.tar.gz"
      sha256 "2a67bec614c803becfbd0b2179685eda5c34569545e170cc8ea93fa3fdf1a7d9"

      def install
        bin.install "tfu"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dirien/tfu/releases/download/v0.5.0/tfu_0.5.0_darwin_arm64.tar.gz"
      sha256 "d3e29a39846d34fdd2b47ac0bc072503a0d6031e692eb1107a094179b391135d"

      def install
        bin.install "tfu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dirien/tfu/releases/download/v0.5.0/tfu_0.5.0_linux_amd64.tar.gz"
      sha256 "caef9655cb0b84819a4e6209f3568a1632c1d0d58cd07b520cdc0b08dfa21de0"

      def install
        bin.install "tfu"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dirien/tfu/releases/download/v0.5.0/tfu_0.5.0_linux_arm64.tar.gz"
      sha256 "8e83b7e22fe0f8641a19d01537ca272a5a519858f659157fab6542980fe7604e"

      def install
        bin.install "tfu"
      end
    end
  end
end
