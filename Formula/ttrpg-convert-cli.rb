# Generated with JReleaser 1.9.0 at 2023-11-14T23:15:12.678066-05:00
class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.2.14/ttrpg-convert-cli-2.2.14-runner.jar", using: :nounzip
  version "2.2.14"
  sha256 "1ae72896d3facfcaa8357e980a0a757979bd8c52a794e1b7dde65550332befb5"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "ttrpg-convert-cli-2.2.14-runner.jar"
    bash = <<~EOS
      #!/bin/bash
      export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
      exec "${JAVA_HOME}/bin/java" -jar #{libexec}/ttrpg-convert-cli-2.2.14-runner.jar "$@"
    EOS

    bin.mkpath
    File.write("#{bin}/ttrpg-convert", bash)
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert --version")
    assert_match "2.2.14", output
  end
end
