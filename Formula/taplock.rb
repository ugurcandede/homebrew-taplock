class Taplock < Formula
  desc "Temporarily disable keyboard and trackpad input on your Mac"
  homepage "https://github.com/ugurcandede/taplock"
  url "https://github.com/ugurcandede/taplock/releases/download/v1.0.0/taplock-macos.zip"
  sha256 "ab579e6d9fbcd8c483220f0e76e11f225a968b07efba934d253e237731a9a656"
  license :cannot_represent

  def install
    bin.install "taplock-universal" => "taplock"
  end

  def caveats
    <<~EOS
      TapLock needs Accessibility permission to block input.
      It will guide you through this on first run.
    EOS
  end

  test do
    system "#{bin}/taplock", "--version"
  end
end
