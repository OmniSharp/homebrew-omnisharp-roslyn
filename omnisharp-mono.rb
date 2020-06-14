class OmnisharpMono < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.35.3/omnisharp-mono.tar.gz"
  version "1.35.3"
  sha256 "7e8a7b03abd697e1f961101c546eb9441c47a0406776661a659d1dddeb85c429"
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
