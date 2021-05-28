class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.37.10/omnisharp-osx.tar.gz"
  version "1.37.10"
  sha256 "2c82ca9d738c0c1540b35c9a537b1c7322fc5ee646bfe1b248742ed9434314e9"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
