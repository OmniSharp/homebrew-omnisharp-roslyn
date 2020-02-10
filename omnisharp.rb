class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.34.11/omnisharp-osx.tar.gz"
  version "1.34.11"
  sha256 "f9d2cf59fa1e690412cf89aefb8e4989a264855487c68ab0fea3adac165ada9d"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
