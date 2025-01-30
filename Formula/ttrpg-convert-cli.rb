# Generated with JReleaser 1.16.0 at 2025-01-30T11:25:54.345876261Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "3.0.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.1/ttrpg-convert-cli-3.0.1-linux-x86_64.zip"
    sha256 "5ac3b5b91a10a0476ee041ea81cf2eaf1f57d0501983288c0512085b315817b2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.1/ttrpg-convert-cli-3.0.1-osx-aarch_64.zip"
    sha256 "4f2c288d361afbfee59d79a26555bee21053317a2791901c67bdd05c348d2dfe"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.1/ttrpg-convert-cli-3.0.1-osx-x86_64.zip"
    sha256 "202a27203095864ce7075d956d5a6d2133b52db564be61be0472ecead4322f11"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "3.0.1", output
  end
end
