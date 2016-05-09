class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.9-alpha13/omnisharp-osx-x64-netcoreapp1.0.tar.gz"
  version "1.9-alpha13"
  sha256 "7629d61f7d80581287584f197403f5cd4ff355a212b68430a314954a89ddf2b8"

  depends_on "mono" => :recommended
  depends_on "aspnet/dnx/dnvm" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
