#!/bin/zsh

set -euo pipefail

repo_dir="${0:A:h:h}"
project_path="$repo_dir/Minimal Twitter Safari/Minimal Twitter Safari.xcodeproj"
derived_data="$repo_dir/build/Install"
product="$derived_data/Build/Products/Release/Minimal Twitter Safari.app"
destination="/Applications/Minimal Twitter Safari.app"

xcodebuild \
  -quiet \
  -project "$project_path" \
  -scheme "Minimal Twitter Safari" \
  -configuration Release \
  -derivedDataPath "$derived_data" \
  build

codesign --verify --deep --strict "$product"

if [[ -e "$destination" ]]; then
  osascript -e 'tell application "Finder" to delete POSIX file "/Applications/Minimal Twitter Safari.app"'
fi

ditto "$product" "$destination"
open "$destination"

echo "Installed: $destination"
