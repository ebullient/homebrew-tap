# Generated with JReleaser 1.16.0 at 2025-01-25T02:07:16.779174914Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "3.0.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.0/ttrpg-convert-cli-3.0.0-linux-x86_64.zip"
    sha256 "fd74a6e6039f379ac8c8fb5610a95ef86260565c08a31400ee8c3d652ad01ba6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.0/ttrpg-convert-cli-3.0.0-osx-aarch_64.zip"
    sha256 "81d27b6994f3cb0e031619c36ca60de2ff9431f8dc2905ceb6483c7ee22d4097"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.0/ttrpg-convert-cli-3.0.0-osx-x86_64.zip"
    sha256 "c28f9e4602bc679d61291042ab3872a133df6a2ede3a27699f879ea4e7850343"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "3.0.0", output
  end
end
