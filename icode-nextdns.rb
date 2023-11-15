class IcodeNextdns < Formula
	desc "Install and configure NextDNS for iCode"
	homepage "https://github.com/yourusername/icode-nextdns"
	url "URL_to_your_install-nextdns.sh" # Replace with the actual URL
	sha256 "sha256_of_install-nextdns.sh" # Replace with the actual SHA256

	def install
		bin.install "install-nextdns.sh"
	end

	def post_install
		system "#{bin}/install-nextdns.sh"
	end

	test do
		system "nextdns", "status"
	end
end
