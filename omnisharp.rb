class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.15.0/omnisharp-osx-x64-netcoreapp1.1.tar.gz"
  version "1.15.0"
  sha256 "57a4f1c62e3e15705e2bceedda133d30620a588f05292ef54da592076e0fd018"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
