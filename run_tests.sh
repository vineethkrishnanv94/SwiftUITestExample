#!/bin/bash

PROJECT="UITestExample.xcodeproj"
SCHEME="UITestExampleUITests"
DESTINATION="platform=iOS Simulator,name=iPhone 14,OS=latest"

xcodebuild test \
  -project "$PROJECT" \
  -scheme "$SCHEME" \
  -destination "$DESTINATION" \
  -resultBundlePath UITestResults.xcresult

if [ $? -eq 0 ]; then
  echo "Tests passed successfully."
else
  echo "Tests failed."
fi

