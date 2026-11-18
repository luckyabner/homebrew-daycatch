# homebrew-daycatch

[Daycatch](https://github.com/luckyabner/daycatch) 的 Homebrew tap —— 一个菜单栏 app，把选中的文字或截图交给 AI 识别成日程和待办，写进「日历」和「提醒事项」。

## 安装

Homebrew 要求先信任第三方 tap（它要加载这里的 cask 定义）：

```sh
brew trust luckyabner/daycatch
brew install --cask luckyabner/daycatch/daycatch
```

写全了是 `<用户名>/<tap 名>/<cask 名>`。也可以先 tap 再按短名装：

```sh
brew tap luckyabner/daycatch
brew trust luckyabner/daycatch
brew install --cask daycatch
```

Daycatch 是自签名、未公证的。cask 在安装后会去掉文件上的 quarantine 属性，所以装完可以直接打开，不会遇到「无法验证开发者」。

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
brew trust luckyabner/daycatch
brew install --cask luckyabner/daycatch/daycatch
```

The app is self-signed and not notarized; the cask removes the quarantine attribute after install so it launches without a Gatekeeper prompt.

Updates are delivered by Sparkle (`auto_updates true`), so don't use `brew upgrade` for this cask.
