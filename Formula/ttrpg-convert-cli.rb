# Generated with JReleaser 1.11.0 at 2024-04-29T21:13:34.449743028Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "2.3.12"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.12/ttrpg-convert-cli-2.3.12-linux-x86_64.zip"
    sha256 "8fc499f4137f4092906c8095919a3bac77dfc1e131f0f713ed5b881671e86741"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.12/ttrpg-convert-cli-2.3.12-osx-aarch_64.zip"
    sha256 "30d667611c836be67fbbfcf106917736258434c895fe4962dd90ca4a466e81c2"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.12/ttrpg-convert-cli-2.3.12-osx-x86_64.zip"
    sha256 "8f0e249e680d9c1870a261f1841c867ed5053f93709ce2a30d79f0d5e21c904d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.3.12", output
  end
end
