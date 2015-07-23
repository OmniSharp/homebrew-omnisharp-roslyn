class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.1.0/omnisharp.tar.gz"
  version "1.1.0"
  sha256 "8837c4867b601e218c72cf972d2dea332d4e2e4c327f64024e60df5a8d42ccf1"

  depends_on "mono" => :recommended
  depends_on "aspnet/dnx/dnvm" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
