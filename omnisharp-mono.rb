class OmnisharpMono < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.19.0/omnisharp-mono.tar.gz"
  version "1.19.0"
  sha256 "80a9ff14f5939c1cf32bc6264d4c813ee0a6c23027a3301338f94858d6b79c31"
  conflicts_with "omnisharp"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]

    # To match non-mono install, create an `omnisharp' shell script.
    (bin/"omnisharp").write <<~EOS
      #!/usr/bin/env sh
      mono /usr/local/opt/omnisharp-mono/libexec/OmniSharp.exe $@
    EOS
  end

  def post_install
    system "/bin/chmod +x #{bin}/omnisharp"
  end

end
