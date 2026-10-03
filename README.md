# info-moed/homebrew-tap

Homebrew casks for [NS2 Bridge](https://info-moed.github.io/NS2Bridge/): Switch 2 Pro, NSO GameCube and NSO N64
controllers on macOS.

```bash
brew install --cask info-moed/tap/ns2bridge
```

NS2 Bridge isn't signed with a paid Apple Developer ID: open it once, then allow it in **System Settings → Privacy &
Security → Open Anyway**. The cask follows NS2 Bridge's releases automatically (checked daily, verified against each
release's published SHA-256).

To remove everything: in NS2 Bridge, **Setup → Reset NS2 Bridge…** (restores any games the helper was installed
into), then `brew uninstall --zap ns2bridge`.
