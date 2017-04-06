class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.13.0/omnisharp-osx-x64-netcoreapp1.1.tar.gz"
  version "1.13.0"
  sha256 "0238cfe4b2187bd3fb3c035574373d7d69dc2fe7fa1462f516c30a0b2008406d"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
