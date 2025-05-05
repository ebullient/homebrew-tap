# Generated with JReleaser 1.18.0 at 2025-05-05T16:31:36.246873534Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "3.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.0/ttrpg-convert-cli-3.1.0-linux-x86_64.zip"
    sha256 "4664020c4513b0ccd843812634e31a684b7ec3b62dcebb1507d439b1b10470cd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.0/ttrpg-convert-cli-3.1.0-osx-aarch_64.zip"
    sha256 "c61a2ca210587e8e18b9d3395029b2eafbabcbadcf6cdef2bdeb81ca5a4c467f"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.1.0/ttrpg-convert-cli-3.1.0-osx-x86_64.zip"
    sha256 "d0a153828c6c8a7110db173257c29babbe6978bda94bc70cf2b01b37fd0b911c"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "3.1.0", output
  end
end
