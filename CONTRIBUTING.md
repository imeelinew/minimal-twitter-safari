# 开发说明

扩展资源位于 `Minimal Twitter Safari/Minimal Twitter Safari Extension/Resources`。修改 `manifest.json`、内容脚本或设置页后，直接重新运行 Xcode Scheme 即可。

提交前请至少执行一次 README 中的无签名构建命令，并确认 Safari 中：

- 工具栏弹窗能读取和保存设置；
- `x.com` 页面会加载本地 CSS；
- 关闭扩展开关后页面样式恢复；
- 深色模式与自定义背景色正常。

