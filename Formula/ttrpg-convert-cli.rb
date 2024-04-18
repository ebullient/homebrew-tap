# Generated with JReleaser 1.9.0 at 2023-11-14T23:15:12.678066-05:00
class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.8/ttrpg-convert-cli-2.3.8-runner.jar", using: :nounzip
  version "2.3.8"
  sha256 "493df3c96a78c37583df224e64341dd8b6d33e170164231866848e3aeb6c7753"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "ttrpg-convert-cli-2.3.8-runner.jar"
    bash = <<~EOS
      #!/bin/bash
      export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
      exec "${JAVA_HOME}/bin/java" -jar #{libexec}/ttrpg-convert-cli-2.3.8-runner.jar "$@"
    EOS

    bin.mkpath
    File.write("#{bin}/ttrpg-convert", bash)
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.3.8", output
  end
end
