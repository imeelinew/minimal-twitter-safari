# Minimal Twitter Safari

The macOS Safari Web Extension version of Minimal Twitter Fork. The project was generated with Xcode's Safari Web Extension Converter; extension resources are included in this repository and do not depend on the original Chrome extension directory at runtime.

## Requirements

- macOS
- Xcode 27 or later
- Safari 15.4 or later (Manifest V3; the minimum version is also set in the manifest)

## Run locally

1. Open `Minimal Twitter Safari/Minimal Twitter Safari.xcodeproj` in Xcode.
2. Select and run the `Minimal Twitter Safari` scheme. The project is configured with the local development team `5Q5QT76MJU`.
3. Enable **Minimal Twitter Safari Extension** in Safari **Settings → Extensions**.
4. Grant website access to `x.com`, `twitter.com`, and `mobile.twitter.com`, then refresh open pages.

Open extension settings using its Safari toolbar button.

## Structure

- `Minimal Twitter Safari/Minimal Twitter Safari/`: macOS host app.
- `Minimal Twitter Safari/Minimal Twitter Safari Extension/`: Safari Web Extension target.
- `Minimal Twitter Safari/Minimal Twitter Safari Extension/Resources/`: manifest, content scripts, settings page, styles, and fonts.

## Verify the build

Check the local build without code signing:

```sh
xcodebuild \
  -project "Minimal Twitter Safari/Minimal Twitter Safari.xcodeproj" \
  -scheme "Minimal Twitter Safari" \
  -configuration Debug \
  CODE_SIGNING_ALLOWED=NO \
  build
```

## Origin

Migrated from `/Users/eli/Dev/minimal-twitter-fork/local-extension`; the original project's MIT license is retained.
