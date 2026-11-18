cask "daycatch" do
  version "0.2.0"
  sha256 "a7655115ce59b02688941f04248fd9af89c4350d8bbec40e1bac346aab7fc786"

  url "https://github.com/luckyabner/daycatch/releases/download/v#{version}/Daycatch-#{version}.zip"
  name "Daycatch"
  desc "Menu bar app that turns text or screenshots into events and reminders"
  homepage "https://github.com/luckyabner/daycatch"

  # 应用用 Sparkle 自己更新，brew 不需要跟着升级，也不该因为版本号不一致而报错
  auto_updates true

  app "Daycatch.app"

  # 没有公证：brew 下载后文件仍带 quarantine，首次启动会被 Gatekeeper 拦。
  # 更新本身由 Sparkle 做 EdDSA 签名校验（见 docs/updates.md），这里去掉隔离属性
  # 等价于用户自己跑一遍 xattr -dr com.apple.quarantine，换来真正的「装完就能用」。
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Daycatch.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.luckyabner.daycatch",
    "~/Library/Caches/com.luckyabner.daycatch",
    "~/Library/Preferences/com.luckyabner.daycatch.plist",
  ]
end
