class IcodeNextdns < Formula
  desc "Install and configure NextDNS for iCode"
  homepage "https://github.com/RealEmmettS/iCodeNetwork"
  url "https://raw.githubusercontent.com/RealEmmettS/iCodeNetwork/main/install_nextdns.sh"
  sha256 "4a47846418cf2ef4717e3f4e"

  def install
    bin.install "install_nextdns.sh"
  end

  def post_install
    system "#{bin}/install_nextdns.sh"
  end

  test do
    system "nextdns", "status"
  end
end
