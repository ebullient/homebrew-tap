# Generated with JReleaser 1.9.0 at 2023-11-14T23:15:12.678066-05:00
class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.2.17/ttrpg-convert-cli-2.2.17-runner.jar", using: :nounzip
  version "2.2.17"
  sha256 "f8d4d8ffff303cd2d25685225dbc7ec740fa3ad057b557632e01aec42040567b"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "ttrpg-convert-cli-2.2.17-runner.jar"
    bash = <<~EOS
      #!/bin/bash
      export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
      exec "${JAVA_HOME}/bin/java" -jar #{libexec}/ttrpg-convert-cli-2.2.17-runner.jar "$@"
    EOS

    bin.mkpath
    File.write("#{bin}/ttrpg-convert", bash)
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.2.17", output
  end
end
