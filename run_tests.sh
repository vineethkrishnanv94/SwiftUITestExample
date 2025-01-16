#!/bin/bash

# Project and Scheme Details
PROJECT="UITestExample.xcodeproj"
SCHEME="UITestExampleUITests"
DESTINATION="platform=iOS Simulator,name=iPhone 14,OS=latest"
RESULTS_DIR="test_results"
RESULTS_FILE="test_results.json"

# Create a directory for results if it doesn't exist
mkdir -p "$RESULTS_DIR"

# Run the tests
xcodebuild test \
  -project "$PROJECT" \
  -scheme "$SCHEME" \
  -destination "$DESTINATION" \
  -resultBundlePath "$RESULTS_DIR/UITestResults.xcresult"

# Check if tests passed or failed
if [ $? -eq 0 ]; then
  echo "Tests passed successfully."
else
  echo "Tests failed."
fi

# Generate the test results in JSON format and save to a file
xcrun xcresulttool get --path "$RESULTS_DIR/UITestResults.xcresult" --format json > "$RESULTS_DIR/$RESULTS_FILE"

echo "Test results saved to $RESULTS_DIR/$RESULTS_FILE"
