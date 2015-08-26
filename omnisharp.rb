class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.2.1/omnisharp.tar.gz"
  version "1.2.1"
  sha256 "3144caa1c777ec7398cc9d9042fc3ef62897a3da6ef1f2c228cf676f5c87cf27"

  depends_on "mono" => :recommended
  depends_on "aspnet/dnx/dnvm" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
