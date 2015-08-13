class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.1.1/omnisharp.tar.gz"
  version "1.1.1"
  sha256 "d3e8327aeae24b9915ceb00ec6d4ee63e5446c0a2cec7446f99c6e31125e8734"

  depends_on "mono" => :recommended
  depends_on "aspnet/dnx/dnvm" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
