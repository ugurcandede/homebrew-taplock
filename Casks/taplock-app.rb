cask "taplock-app" do
  version "1.0.0"
  sha256 "b3cb61f4ef8553eece7ce5a3005b5033b99d743185f24ce4b133583dc9abf1ba"

  url "https://github.com/ugurcandede/taplock-app/releases/download/v#{version}/TapLock-macos.zip"
  name "TapLock"
  desc "Menu bar app to temporarily disable input, or take relaxing breaks on your Mac"
  homepage "https://github.com/ugurcandede/taplock-app"

  app "TapLock.app"

  postflight do
    system "xattr", "-cr", "#{appdir}/TapLock.app"
  end

  uninstall quit: "com.ugurcandede.taplock"

  caveats <<~EOS
    TapLock needs Accessibility permission to block input.
    It will prompt you on first launch.
    Grant permission in System Settings > Privacy & Security > Accessibility.
  EOS
end
