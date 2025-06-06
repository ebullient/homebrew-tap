# Generated with JReleaser 1.18.0 at 2025-06-06T22:21:19.802893583Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "3.1.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.3/ttrpg-convert-cli-3.1.3-linux-x86_64.zip"
    sha256 "44d60199edf348656fdbf22f262b2ebc455b6ce4465a57b8be4fe9f4d0baea29"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.3/ttrpg-convert-cli-3.1.3-osx-aarch_64.zip"
    sha256 "00b524c9aaf25a62f92f9326403a9bf756d0102f7d4f677a1108b837a6c97cd9"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.3/ttrpg-convert-cli-3.1.3-osx-x86_64.zip"
    sha256 "8115d9a55c6b0d4ad1584a8beb9b809176f8920a4dfe8b035c1d32734d27b2be"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "3.1.3", output
  end
end
