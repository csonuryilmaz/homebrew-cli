# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.35.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.35.0/cirrus-darwin-amd64.tar.gz"
    sha256 "9ebef734c9626faa1fd7046de000835c14d8e7beeaa8d818460c21a1dde42763"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.35.0/cirrus-darwin-arm64.tar.gz"
    sha256 "88382fecf77ad0619a370f3168e3dbf41a7e87df2347268aae51dbd6be349088"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.35.0/cirrus-linux-amd64.tar.gz"
    sha256 "42995d29329f881303e5c97fb21a4ba4f28c98d5d238606ec37ae9860220bbc9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.35.0/cirrus-linux-arm.tar.gz"
    sha256 "af970584c01910185c62dc1c7cdc09b243342328a2be94a23167a3980c93274e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.35.0/cirrus-linux-arm64.tar.gz"
    sha256 "74da7f19360a8a5c4d61371112392cca7ca3c6cd790a589ba59a8ed2496afc82"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
