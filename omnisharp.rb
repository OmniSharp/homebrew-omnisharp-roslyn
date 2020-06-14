class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.35.3/omnisharp-osx.tar.gz"
  version "1.35.3"
  sha256 "b498337e4cc5293744d1e0df999ad56d03191fc83ba72be2b71f529ebebe0177"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
