class OmnisharpMono < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.17.0/omnisharp-mono.tar.gz"
  version "1.17.0"
  sha256 "798d33e8022efb148fa9e4b65d7dfc4de7fc164793c509f6927fc8b8c62366d3"
  conflicts_with "omnisharp"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]

    # To match non-mono install, create an `omnisharp' shell script.
    (bin/"omnisharp").write <<-EOS.undent
      #!/usr/bin/env sh
      mono /usr/local/opt/omnisharp-mono/libexec/OmniSharp.exe $@
    EOS
  end

  def post_install
    system "/bin/chmod +x #{bin}/omnisharp"
  end

end
