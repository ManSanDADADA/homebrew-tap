# KwikPaste Homebrew Tap

[English](#english) · [简体中文](#简体中文)

## English

Homebrew cask for [KwikPaste](https://github.com/ManSanDADADA/KwikPaste), a fast, local-first clipboard manager. The cask picks the Apple silicon or Intel build automatically.

### Install

```bash
brew install --cask mansandadada/tap/kwikpaste
```

KwikPaste is not signed with an Apple Developer ID yet, so macOS blocks the first launch. Open **System Settings → Privacy & Security** and click **Open Anyway**.

### Upgrade

KwikPaste updates itself. To upgrade through Homebrew instead, name the cask:

```bash
brew upgrade --cask kwikpaste
```

A plain `brew upgrade` skips it because the cask is marked `auto_updates`; add `--greedy` if you want it included.

### Uninstall

```bash
brew uninstall --cask kwikpaste
```

Add `--zap` to also remove clipboard history, settings and logs.

### For maintainers

`Casks/kwikpaste.rb` follows the latest stable KwikPaste release on its own. The **Bump cask** workflow checks every hour, downloads both DMGs, writes the new version and SHA-256 values, commits, and starts **Test cask**. That workflow installs the previous release, upgrades to the cask's version and uninstalls with `--zap`, on Apple silicon and Intel runners.

Update right after publishing a release:

```bash
gh workflow run bump.yml -R ManSanDADADA/homebrew-tap
```

Pass `-f tag=v1.3.7` to point the cask at a specific tag. GitHub pauses scheduled workflows after 60 days without repository activity; if that happens, enable **Bump cask** again in the Actions tab or run it by hand.

## 简体中文

[快贴](https://github.com/ManSanDADADA/KwikPaste)的 Homebrew 安装源，会按芯片自动选择 Apple 芯片版或 Intel 版。

### 安装

```bash
brew install --cask mansandadada/tap/kwikpaste
```

快贴暂未经过苹果代码签名，首次打开会被系统拦下。打开 **系统设置 → 隐私与安全性**，点 **仍要打开**。

### 升级

快贴会自己保持最新。想通过 Homebrew 升级，要写明名字：

```bash
brew upgrade --cask kwikpaste
```

cask 标了 `auto_updates`，不带名字的 `brew upgrade` 会跳过它；想一起升级就加 `--greedy`。

### 卸载

```bash
brew uninstall --cask kwikpaste
```

加上 `--zap` 会连剪贴板历史、设置和日志一起删除。

### 维护

`Casks/kwikpaste.rb` 会自动跟上快贴的最新正式版：**Bump cask** 每小时检查一次，下载两个 DMG，写入新版本号和 SHA-256 后提交，再启动 **Test cask**。测试在 Apple 芯片和 Intel runner 上先装上一个正式版，再升级到 cask 里的版本，最后带 `--zap` 卸载。

发版后想立刻更新：

```bash
gh workflow run bump.yml -R ManSanDADADA/homebrew-tap
```

加 `-f tag=v1.3.7` 可以指定版本。仓库 60 天没有动静时，GitHub 会暂停定时任务；遇到这种情况，到 Actions 页面重新启用 **Bump cask**，或者手动运行一次。
