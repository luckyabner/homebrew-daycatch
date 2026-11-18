cask "daycatch" do
  version "0.1.0"
  sha256 "c7d715bcce8cabd0b90569c43fac031f25ec2a8f5d6b9e28618491e42f819cbe"

  url "https://github.com/luckyabner/daycatch/releases/download/v#{version}/Daycatch-#{version}.zip"
  name "Daycatch"
  desc "Menu bar app that turns selected text or screenshots into calendar events and reminders"
  homepage "https://github.com/luckyabner/daycatch"

  # 应用会用 Sparkle 自己更新，brew 不需要跟着升级，也不该因为版本号不一致而报错
  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Daycatch.app"

  zap trash: [
    "~/Library/Application Support/com.luckyabner.daycatch",
    "~/Library/Caches/com.luckyabner.daycatch",
    "~/Library/Preferences/com.luckyabner.daycatch.plist",
  ]
end
