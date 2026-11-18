cask "daycatch" do
  version "0.1.0"
  sha256 "c7d715bcce8cabd0b90569c43fac031f25ec2a8f5d6b9e28618491e42f819cbe"

  url "https://github.com/luckyabner/daycatch/releases/download/v#{version}/Daycatch-#{version}.zip"
  name "Daycatch"
  desc "Menu bar app that turns text or screenshots into events and reminders"
  homepage "https://github.com/luckyabner/daycatch"

  # 应用会用 Sparkle 自己更新，brew 不需要跟着升级，也不该因为版本号不一致而报错
  auto_updates true

  app "Daycatch.app"

  # 没公证的 app：brew 下载后仍会带 quarantine，首次启动会被 Gatekeeper 拦。
  # 应用本身用 Sparkle 的 EdDSA 签名校验更新（见 docs/updates.md），这里去掉隔离属性
  # 等价于用户自己跑 xattr -dr com.apple.quarantine，换来真正的「装完就能用」。
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Daycatch.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.luckyabner.daycatch",
    "~/Library/Caches/com.luckyabner.daycatch",
    "~/Library/Preferences/com.luckyabner.daycatch.plist",
  ]
end
