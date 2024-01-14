# Generated with JReleaser 1.9.0 at 2023-11-14T23:15:12.678066-05:00
class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.2.16/ttrpg-convert-cli-2.2.16-runner.jar", using: :nounzip
  version "2.2.16"
  sha256 "dc040ecdbe6f528cddc1ddf8b7859073d408d4a705526dccd3b762fe6ad1bd32"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "ttrpg-convert-cli-2.2.16-runner.jar"
    bash = <<~EOS
      #!/bin/bash
      export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
      exec "${JAVA_HOME}/bin/java" -jar #{libexec}/ttrpg-convert-cli-2.2.16-runner.jar "$@"
    EOS

    bin.mkpath
    File.write("#{bin}/ttrpg-convert", bash)
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.2.16", output
  end
end
