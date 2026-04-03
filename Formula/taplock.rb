class Taplock < Formula
  desc "Temporarily disable keyboard and trackpad input on your Mac"
  homepage "https://github.com/ugurcandede/taplock"
  url "https://github.com/ugurcandede/taplock/releases/download/v0.0.2/taplock-macos.zip"
  sha256 "bd657f8122e1b1e0ab4828078e906a497079a6812aa886f914f236a96082ff20"
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
