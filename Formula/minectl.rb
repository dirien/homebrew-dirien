# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Minectl < Formula
  desc "minectl️️ 🗺️ is a cli for creating Minecraft (java or bedrock) server on different cloud provider."
  homepage "https://github.com/dirien/minectl"
  version "0.12.0"
  license "Apache License 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dirien/minectl/releases/download/v0.12.0/minectl_0.12.0_darwin_amd64.tar.gz"
      sha256 "79d96d9edc435dad2df0c6ab0b386bc09bbdef39eb802eb26f959d4bf89f5a29"
    end
    if Hardware::CPU.arm?
      url "https://github.com/dirien/minectl/releases/download/v0.12.0/minectl_0.12.0_darwin_arm64.tar.gz"
      sha256 "9a717839dd3358d1268143476b768e18466704af5b006342c3f9548500345dcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dirien/minectl/releases/download/v0.12.0/minectl_0.12.0_linux_arm64.tar.gz"
      sha256 "b4d152762b78359ef9ec93ddf097a9dbbfd2a65a4a6eda9f10cdbb4b9ae2898f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dirien/minectl/releases/download/v0.12.0/minectl_0.12.0_linux_amd64.tar.gz"
      sha256 "e8423f05c60c68a240e95a72c1bdc9ef7d266055ebf39f4c2cde343553e9dfdc"
    end
  end

  def install
    bin.install "minectl"
  end
end
