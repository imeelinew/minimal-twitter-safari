# Minimal Twitter Safari

Minimal Twitter Fork 的 macOS Safari Web Extension 版本。项目由 Xcode 的 Safari Web Extension Converter 生成，扩展资源已复制到仓库中，不依赖原 Chrome 扩展目录运行。

## 环境

- macOS
- Xcode 27 或更高版本
- Safari 15.4 或更高版本（Manifest V3，最低版本也已写入 Manifest）

## 本地运行

1. 用 Xcode 打开 `Minimal Twitter Safari/Minimal Twitter Safari.xcodeproj`。
2. 分别选择 `Minimal Twitter Safari` 和 `Minimal Twitter Safari Extension` Target，在 **Signing & Capabilities** 中选择同一个开发团队。
3. 选择 `Minimal Twitter Safari` Scheme 并运行。
4. 在 Safari 的 **设置 → 扩展** 中启用 **Minimal Twitter Safari Extension**。
5. 为 `x.com`、`twitter.com` 和 `mobile.twitter.com` 授予网站访问权限，然后刷新已有页面。

扩展设置可通过 Safari 工具栏中的扩展按钮打开。

## 结构

- `Minimal Twitter Safari/Minimal Twitter Safari/`：macOS 宿主 App。
- `Minimal Twitter Safari/Minimal Twitter Safari Extension/`：Safari Web Extension Target。
- `Minimal Twitter Safari/Minimal Twitter Safari Extension/Resources/`：Manifest、内容脚本、设置页、样式和字体。

## 验证构建

无需代码签名即可做本地编译检查：

```sh
xcodebuild \
  -project "Minimal Twitter Safari/Minimal Twitter Safari.xcodeproj" \
  -scheme "Minimal Twitter Safari" \
  -configuration Debug \
  -derivedDataPath build/DerivedData \
  CODE_SIGNING_ALLOWED=NO \
  build
```

## 来源

迁移自 `/Users/eli/Dev/minimal-twitter-fork/local-extension`，保留原项目 MIT 许可证。
