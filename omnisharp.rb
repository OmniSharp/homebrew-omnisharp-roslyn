class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.0.4/omnisharp.tar.gz"
  version "1.0.4"
  sha256 "ae97e60973115bd5ad3b84e16aced34adfa7ccc4509aef7416f7ed9de73e500e"

  depends_on "mono" => :recommended
  depends_on "aspnet/dnx/dnvm" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
