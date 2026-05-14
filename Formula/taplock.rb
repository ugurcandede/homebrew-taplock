class Taplock < Formula
  desc "Temporarily disable keyboard and trackpad input, or take relaxing breaks on your Mac"
  homepage "https://github.com/ugurcandede/taplock"
  url "https://github.com/ugurcandede/taplock/releases/download/v1.3.0/taplock-macos.zip"
  sha256 "8f8ac4f6ea2eaba4af206cd8c54510ae9baf6296879711e7deea64ea2595a056"
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
