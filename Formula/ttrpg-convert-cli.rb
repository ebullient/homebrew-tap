# Generated with JReleaser 1.18.0 at 2025-05-13T00:37:01.695637752Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "3.1.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.2/ttrpg-convert-cli-3.1.2-linux-x86_64.zip"
    sha256 "5448ebbbcf071cf5521caeaef650bd4918f29e0e529a3daaf39eeb7d6fd18166"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.2/ttrpg-convert-cli-3.1.2-osx-aarch_64.zip"
    sha256 "73b18e0b5930647d045be2fb005abf1e5d0116421cff6f3765310b2272b820a8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.2/ttrpg-convert-cli-3.1.2-osx-x86_64.zip"
    sha256 "2e9a395a8d40cf9a76d08cfb0f7458a89df7dfc27c974ffb542ed11e66e47e09"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "3.1.2", output
  end
end
