# Generated with JReleaser 1.18.0 at 2025-05-10T20:05:21.877526124Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "3.1.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.1/ttrpg-convert-cli-3.1.1-linux-x86_64.zip"
    sha256 "fad0bbf20dedcadc466ea0f9c07aec5d5d2ddb7bbe1b0eee5723e57a7582d487"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.1/ttrpg-convert-cli-3.1.1-osx-aarch_64.zip"
    sha256 "969de2ea5b9b375f1c03c61bdf557559083d33956036d799507a6cbb05b740d0"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.1/ttrpg-convert-cli-3.1.1-osx-x86_64.zip"
    sha256 "fb0aa5516a3a6e8efa65330938431b3f284c395f18ef8005c70b561a4ab6b72d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "3.1.1", output
  end
end
