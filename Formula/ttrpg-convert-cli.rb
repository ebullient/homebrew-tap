# Generated with JReleaser 1.12.0 at 2024-05-27T13:04:54.849053643Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "2.3.15"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.15/ttrpg-convert-cli-2.3.15-linux-x86_64.zip"
    sha256 "dbe4860abcace6cc36945d6153d2e94eb5f49e733934ec2a47fbeba8eaa298b6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.15/ttrpg-convert-cli-2.3.15-osx-aarch_64.zip"
    sha256 "d359de5cdbe9a34c31ed99c26343aab025120938cabc44e20c2d977c84f4133a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.15/ttrpg-convert-cli-2.3.15-osx-x86_64.zip"
    sha256 "cbdb93085692cdbe6ec50ee049dea5773b3ec35235c771ade6eaf3ad21090fa6"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.3.15", output
  end
end
