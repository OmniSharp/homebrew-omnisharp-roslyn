class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.0.6/omnisharp.tar.gz"
  version "1.0.6"
  sha256 "7b2d1dad567e7f18d529edee55e92c86f879d44566fda3f689cc737e0a92f7e2"

  depends_on "mono" => :recommended
  depends_on "aspnet/dnx/dnvm" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
