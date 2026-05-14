cask "taplock-app" do
  version "1.3.2"
  sha256 "5fd5b466ccdabee28d75e048079318766c56501504808e43c9ca1bc4c3467c88"

  url "https://github.com/ugurcandede/taplock-app/releases/download/v#{version}/TapLock-macos.zip"
  name "TapLock"
  desc "Menu bar app to temporarily disable input, or take relaxing breaks on your Mac"
  homepage "https://github.com/ugurcandede/taplock-app"

  app "TapLock.app"

  postflight do
    system "xattr", "-cr", "#{appdir}/TapLock.app"
    system "tccutil", "reset", "Accessibility", "com.ugurcandede.taplock"
  end

  uninstall quit: "com.ugurcandede.taplock"

  caveats <<~EOS
    TapLock needs Accessibility permission to block input.
    It will prompt you on first launch.
    Grant permission in System Settings > Privacy & Security > Accessibility.
  EOS
end
