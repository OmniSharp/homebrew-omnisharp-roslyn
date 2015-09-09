class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.4.0/omnisharp.tar.gz"
  version "1.4.0"
  sha256 "be0a7ff48b8f1d6a36c5cedec1cb6d6fadc2a39a6d98b3cefaab1b3defde3904"

  depends_on "mono" => :recommended
  depends_on "aspnet/dnx/dnvm" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
