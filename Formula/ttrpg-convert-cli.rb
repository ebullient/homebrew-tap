# Generated with JReleaser 1.12.0 at 2024-06-03T23:26:19.156348653Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "2.3.16"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.16/ttrpg-convert-cli-2.3.16-linux-x86_64.zip"
    sha256 "b6b4f83a7003277fdd9d74a3bab1dc3ab3364cd09c07e4838c19d389c832d190"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.16/ttrpg-convert-cli-2.3.16-osx-aarch_64.zip"
    sha256 "076c709aacf492329b21ee8183949cc494f9ba4f787570af7187789b0bc5d8a0"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.16/ttrpg-convert-cli-2.3.16-osx-x86_64.zip"
    sha256 "50dba2ab2726b82c4bf0c59fc5a84f0656f194326aa4538b08fa8a3cf0b39847"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.3.16", output
  end
end
