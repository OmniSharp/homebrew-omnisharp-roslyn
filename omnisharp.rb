class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.35.4/omnisharp-osx.tar.gz"
  version "1.35.4"
  sha256 "b24e376fcb21b8fc0a86b0e2a6e43666eb8a9a68bad4adeeb4cd35f7c14fa631"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
