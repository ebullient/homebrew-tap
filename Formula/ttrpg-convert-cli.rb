# Generated with JReleaser 1.11.0 at 2024-05-01T11:55:02.858351749Z

class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  version "2.3.13"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.13/ttrpg-convert-cli-2.3.13-linux-x86_64.zip"
    sha256 "f28dedbf618e8038d6bfba8764417056d82de83c5f43ff00f346ec63fb15070c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.13/ttrpg-convert-cli-2.3.13-osx-aarch_64.zip"
    sha256 "1419c5ffd2273ba96023adb6158976cdd5e578ca7e8caeb631e5a6d07ccc72f8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.13/ttrpg-convert-cli-2.3.13-osx-x86_64.zip"
    sha256 "b71eb31df2cacd452308165485a40c787b242e016ac8fb376d51a00414f0a8b4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttrpg-convert" => "ttrpg-convert"
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.3.13", output
  end
end
