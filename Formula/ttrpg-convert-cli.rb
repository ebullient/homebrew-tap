# Generated with JReleaser 1.9.0 at 2023-11-14T23:15:12.678066-05:00
class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.3.2/ttrpg-convert-cli-2.3.2-runner.jar", using: :nounzip
  version "2.3.2"
  sha256 "936776009b0cbf4aab897256f47869e1f8da3bf64fd5172b566d34a3a89826a2"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "ttrpg-convert-cli-2.3.2-runner.jar"
    bash = <<~EOS
      #!/bin/bash
      export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
      exec "${JAVA_HOME}/bin/java" -jar #{libexec}/ttrpg-convert-cli-2.3.2-runner.jar "$@"
    EOS

    bin.mkpath
    File.write("#{bin}/ttrpg-convert", bash)
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.3.2", output
  end
end
