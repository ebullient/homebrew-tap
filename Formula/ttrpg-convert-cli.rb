# Generated with JReleaser 1.13.1 at 2024-07-15T21:40:27.851617442Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "2.3.17"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.17/ttrpg-convert-cli-2.3.17-linux-x86_64.zip"
    sha256 "235c9207327efc91dc3af66c14e2de4cc3e6aa95008ea714bd20a1a611facf47"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.17/ttrpg-convert-cli-2.3.17-osx-aarch_64.zip"
    sha256 "7a2e6276493ddc6f4e3919d495e49f35c8613ec50bc2dbf94cc11fe3278623a0"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.17/ttrpg-convert-cli-2.3.17-osx-x86_64.zip"
    sha256 "8ad640f24a6fec1d4a15bf73fe7dd94a6310efd0b026c8510707a2783d2a01c3"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.3.17", output
  end
end
