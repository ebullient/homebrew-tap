# Generated with JReleaser 1.18.0 at 2025-06-26T20:37:34.481747595Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "3.1.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.4/ttrpg-convert-cli-3.1.4-linux-x86_64.zip"
    sha256 "977a702a63c68c1a9936e4df58ef640b9634c7f2efeb8a37f67ddb15829ba8b8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.4/ttrpg-convert-cli-3.1.4-osx-aarch_64.zip"
    sha256 "55dd59d44ac3186ee6b44bea76ce99ba6621402a986e1c96529b4686337cb954"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.4/ttrpg-convert-cli-3.1.4-osx-x86_64.zip"
    sha256 "617889c3e5eb33e7e86a6e8d5aec7b6b7c791e033e8e6bb1d0109ba745d6f446"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "3.1.4", output
  end
end
