class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.19.0/omnisharp-osx-x64-netcoreapp1.1.tar.gz"
  version "1.19.0"
  sha256 "6366dedb8fed547bb1cad40a2051c642287069793a22d7a3a3ba8cdbc0f932b4"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
