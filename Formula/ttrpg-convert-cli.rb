# Generated with JReleaser 1.17.0 at 2025-03-21T13:13:09.231648139Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "3.0.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.2/ttrpg-convert-cli-3.0.2-linux-x86_64.zip"
    sha256 "37a319373f0c26c101348d6466662df3b8f295d685f5c04202dbee25d9b2188f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.2/ttrpg-convert-cli-3.0.2-osx-aarch_64.zip"
    sha256 "0a79b806331988c9595b5a1bb6d7cd41182d675ec9c86b12fbec5599353cb549"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/3.0.2/ttrpg-convert-cli-3.0.2-osx-x86_64.zip"
    sha256 "cee0ca066fd0f8d082d50668a5506a044a851c9371e0a666f2f34bf304f290b2"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "3.0.2", output
  end
end
