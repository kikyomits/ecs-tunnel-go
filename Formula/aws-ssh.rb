# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsSsh < Formula
  desc "How engineers learn about CLIs"
  homepage "https://github.com/kikyomits/aws-ssh"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kikyomits/aws-ssh/releases/download/0.0.1/aws-ssh_0.0.1_darwin_amd64.tar.gz"
      sha256 "c3b3584722e19468d95252464657d27edc15eb9e7cde10103a5271d53eabd3b8"

      def install
        bin.install "bin/aws-ssh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kikyomits/aws-ssh/releases/download/0.0.1/aws-ssh_0.0.1_darwin_arm64.tar.gz"
      sha256 "f55ee95472a6ecaba51e8c30f6e6e2be05a5cdcfc0fb1d674605a327ea3796d1"

      def install
        bin.install "bin/aws-ssh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kikyomits/aws-ssh/releases/download/0.0.1/aws-ssh_0.0.1_linux_amd64.tar.gz"
      sha256 "c85b93bab947e3e970e620bde0eb8776c13aadddc153879206abfdca5fa99020"

      def install
        bin.install "bin/aws-ssh"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kikyomits/aws-ssh/releases/download/0.0.1/aws-ssh_0.0.1_linux_arm64.tar.gz"
      sha256 "885461cf4b4ab4cd7268b82ac54f00cca5dd000d47bb69417de1457df5213772"

      def install
        bin.install "bin/aws-ssh"
      end
    end
  end
end
