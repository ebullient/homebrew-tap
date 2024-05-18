# Generated with JReleaser 1.12.0 at 2024-05-18T12:44:04.982504606Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "2.3.14"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.14/ttrpg-convert-cli-2.3.14-linux-x86_64.zip"
    sha256 "4798371ca2822796f76cd9c93380f9aca62a2ba89817bc4fd57e722dac36f9fd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.14/ttrpg-convert-cli-2.3.14-osx-aarch_64.zip"
    sha256 "bf3349ba9818b8293bcac17ed950203ebafc7cd8e0d8c56d6dac5aa35acb8d2d"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.14/ttrpg-convert-cli-2.3.14-osx-x86_64.zip"
    sha256 "870bdbc2ecfcac1be9a3ae0d81081091f3f4e68e1f72830f0c293d15f8062c2a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.3.14", output
  end
end
