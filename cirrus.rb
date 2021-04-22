# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.49.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.49.0/cirrus-darwin-amd64.tar.gz"
    sha256 "86154380c7c85ca63c05758529f8efcefa1317537dc1fa1402ad004b7defa044"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.49.0/cirrus-darwin-arm64.tar.gz"
    sha256 "7243e433441d43909861e495095e731efbb55d085ab9478bee9b722b1784e6c3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.49.0/cirrus-linux-amd64.tar.gz"
    sha256 "8e0fadc93b2d1a2e25f60e3ea93e8c01cf13af6cf5bb8fb6ba005cb53979994e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.49.0/cirrus-linux-arm.tar.gz"
    sha256 "7f48ff0dd3bd2f2eb6190a8dfc9adfd73c1337364cfe0c093cfc9b7713da29c3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.49.0/cirrus-linux-arm64.tar.gz"
    sha256 "732e3cb52703a56d30466a3228dd3eebb8af45216521ea24de383f242acbee82"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
