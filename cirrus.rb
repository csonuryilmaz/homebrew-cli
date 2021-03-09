# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.42.5"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.42.5/cirrus-darwin-amd64.tar.gz"
    sha256 "574f11708d30b9ba2248a30dca3ed2d2a3e5544ea5ebedf8bde1e395bc427bbc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.42.5/cirrus-darwin-arm64.tar.gz"
    sha256 "3607fe55a54fd9b5e705543904b2aa363788cbe61e35998bee13693d25bbebb8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.42.5/cirrus-linux-amd64.tar.gz"
    sha256 "85a1555986edcdba8fe692bf95215f739a6d7d0f842156218d69f07f17bde046"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.42.5/cirrus-linux-arm.tar.gz"
    sha256 "85eb3a2858d2ac44d6e77f056f21dfeffb19aaefa9f5eaad649da4ce5537fda0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.42.5/cirrus-linux-arm64.tar.gz"
    sha256 "42d437b473fc8a21317eb0adbe60637d24419b25574fbc38422ac5acb8e528d7"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
