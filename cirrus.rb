# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.94.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.94.1/cirrus-darwin-arm64.tar.gz"
      sha256 "9b2739d9a9656acf909bef893c168dfcc1018e93cfa2c06aa67604e45cf4734d"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.94.1/cirrus-darwin-amd64.tar.gz"
      sha256 "fee52226d5e56ebb3f3d93bf0644f92d446ac62becf98dbdddb681855d8082dd"

      def install
        bin.install "cirrus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.94.1/cirrus-linux-arm.tar.gz"
      sha256 "74d5d7df12a01c04ce973dd80505952ea620632397cd942520e5ef6d77826bee"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.94.1/cirrus-linux-arm64.tar.gz"
      sha256 "794437b8b4960fa4ddd634811ff9a79c955b0a7e649bf7df6169fb8713e842f9"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.94.1/cirrus-linux-amd64.tar.gz"
      sha256 "60b48e8e6bbc3c212895e550e9807f7dd33d9c45dc610de12ee6d9729d6dd7e5"

      def install
        bin.install "cirrus"
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
