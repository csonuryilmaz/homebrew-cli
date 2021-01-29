# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.31.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.31.1/cirrus-darwin-amd64.tar.gz"
    sha256 "b84532f5b8797a3452418b21487738166cf70a6c8a8eca274f0fd57fa75e54ba"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.31.1/cirrus-linux-amd64.tar.gz"
    sha256 "b4db5c5d0e9073623885014537e21da705b20de4ec951b8af5380eaeecf259df"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.31.1/cirrus-linux-arm.tar.gz"
    sha256 "090ef40d6c6146e23f2909b713cb6ecfc68cdf4f5fd0f76de0bdf18dc4684cff"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.31.1/cirrus-linux-arm64.tar.gz"
    sha256 "2c514ad8e5b74ea3f850046617b9602bd903021b17c32d313c997bf5776d1ed7"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
