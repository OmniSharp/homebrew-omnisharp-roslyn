class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.30.1/omnisharp-osx.tar.gz"
  version "1.30.1"
  sha256 "e2dfd016c1a6ea1dc4c96957c4be1c82d82769f33f56091f3082739421638bad"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
