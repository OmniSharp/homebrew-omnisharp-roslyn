class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.35.2/omnisharp-osx.tar.gz"
  version "1.35.2"
  sha256 "dc17307a70316aa32d9f39b103f93f48101d89add61868fa8f14d82872fa3b8e"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
