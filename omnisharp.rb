class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.17.0/omnisharp-osx-x64-netcoreapp1.1.tar.gz"
  version "1.17.0"
  sha256 "c91e8ac78d7d91d31a27fd8d827e47081d9310a0219ffc3eb70c327297ed15a5"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
