cask "orvpass" do
  version "4.1.2"
  sha256 "252260fe4fb98ad58bb52fcfa06cc892456c7913c208c38ff8cc487947aee6a2"

  url "https://github.com/krtvysinghh/Orvpass/releases/download/v#{version}/Orvpass_#{version}_aarch64.dmg"
  name "Orvpass"
  desc "Lightning-fast, highly secure, natively designed password manager"
  homepage "https://github.com/krtvysinghh/Orvpass"

  app "Orvpass.app"

  zap trash: [
    "~/Library/Application Support/Orvpass",
    "~/Library/Caches/Orvpass",
    "~/Library/Preferences/com.krtvysingh.orvpass.plist",
    "~/Library/Saved Application State/com.krtvysingh.orvpass.savedState",
  ]
end
