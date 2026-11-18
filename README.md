# homebrew-daycatch

[Daycatch](https://github.com/luckyabner/daycatch) 的 Homebrew tap —— 一个菜单栏 app，把选中的文字或截图交给 AI 识别成日程和待办，写进「日历」和「提醒事项」。

## 安装

```sh
brew install --cask luckyabner/daycatch/daycatch
```

等价写法：

```sh
brew tap luckyabner/daycatch
brew install --cask daycatch
```

## 更新

Daycatch 用 Sparkle 自己更新：每 24 小时在后台查一次 GitHub Release，发现新版本时右下角弹卡片，点「更新」即下载、校验签名、替换并重启。

cask 里标了 `auto_updates true`，所以**不要**用 `brew upgrade` 升级它，也不需要卸载重装。

## 卸载

```sh
brew uninstall --cask daycatch
brew untap luckyabner/daycatch
```

配置和 API Key 保存在 `~/Library/Application Support/com.luckyabner.daycatch/`；`brew uninstall --cask --zap daycatch` 会一并删除。

---

## English

Homebrew tap for [Daycatch](https://github.com/luckyabner/daycatch), a macOS menu bar app that turns selected text or screenshots into calendar events and reminders.

```sh
brew install --cask luckyabner/daycatch/daycatch
```

Updates are delivered by Sparkle (`auto_updates true`), so don't use `brew upgrade` for this cask.
