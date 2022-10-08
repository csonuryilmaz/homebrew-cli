# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.87.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.87.2/cirrus-darwin-arm64.tar.gz"
      sha256 "02b9f3ba2d556fa8c5f0ba744ff30705eb0cb99fc5b0d2966fb5194176ef9acf"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.87.2/cirrus-darwin-amd64.tar.gz"
      sha256 "ab27b498dfffd7166f0ee7b87b8dadb7676260e93348581d920f84bd11c839f0"

      def install
        bin.install "cirrus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.87.2/cirrus-linux-arm.tar.gz"
      sha256 "163163551314bdf075a7b9c2b12da1457feafde240acde9cb518bef21e7821da"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.87.2/cirrus-linux-arm64.tar.gz"
      sha256 "274fc76f994ef125f5e3bab0d8d13bb7ad47598cf84798d861349bba51d52b18"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.87.2/cirrus-linux-amd64.tar.gz"
      sha256 "92f8f545c013317a3e82c9bd61346c68ef2cdbf838228dcb1dd731080a7be2e9"

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
