# Generated with JReleaser 1.17.0 at 2025-03-24T22:04:07.726683708Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "3.0.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.3/ttrpg-convert-cli-3.0.3-linux-x86_64.zip"
    sha256 "38665e6920f4b6a38006bf4007d0127a7f4492eac5d6687f34bb1a06afd6bb6f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.3/ttrpg-convert-cli-3.0.3-osx-aarch_64.zip"
    sha256 "bbfa609e3a15705ce5a13aec346373edf1df3f0adf3aa7eaab4f45d1ba44c15d"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.3/ttrpg-convert-cli-3.0.3-osx-x86_64.zip"
    sha256 "50969bff7b898f30ef8fbcfae17eeb452db5a70156d57d64e3c8b3e61da71a5f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "3.0.3", output
  end
end
