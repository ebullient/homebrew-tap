# Generated with JReleaser 1.13.1 at 2024-07-27T02:09:24.295908417Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "2.3.18"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.18/ttrpg-convert-cli-2.3.18-linux-x86_64.zip"
    sha256 "0b49a6d746d0cb802f0ce760848b5e04fc2c9bb373634c990cb3ed362c6171c6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.18/ttrpg-convert-cli-2.3.18-osx-aarch_64.zip"
    sha256 "6f714707d2410217ba9983715894b1237cf9aa2fd9289df47fb64c09197ca377"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.18/ttrpg-convert-cli-2.3.18-osx-x86_64.zip"
    sha256 "5630786f7365e1f13b63f7a9fbc71f7949f11b4ea6694b545a6d96a53a028e3f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.3.18", output
  end
end
