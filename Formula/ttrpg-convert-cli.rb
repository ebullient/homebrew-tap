# Generated with JReleaser 1.9.0 at 2023-11-02T20:11:10.376872-04:00
class TtrpgConvertCli < Formula
  desc "Utility to convert 5eTools and Pf2eTools JSON data into Markdown"
  homepage "https://github.com/ebullient/ttrpg-convert-cli"
  url "https://github.com/ebullient/ttrpg-convert-cli/releases/download/2.2.12/ttrpg-convert-cli-2.2.12-runner.jar", :using => :nounzip
  version "2.2.12"
  sha256 "a27d8789e9bb7c156dd3a25beeebc3be078883b1c711f9537417b16adf186807"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "ttrpg-convert-cli-2.2.12-runner.jar"

    bin.mkpath
    File.open("#{bin}/ttrpg-convert-cli", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/ttrpg-convert-cli-2.2.12-runner.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/ttrpg-convert-cli --version")
    assert_match "2.2.12", output
  end
end
