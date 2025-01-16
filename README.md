UITestExample

This project demonstrates how to run Unit and UI tests for an iOS app using xcodebuild and export the results in JSON format. The results are saved locally in a structured directory.

Table of Contents

Project Overview
Setup Instructions
Running the Tests
Viewing Test Results
Script Details
Project Overview

This repository includes an iOS app with both unit tests and UI tests written using XCTest. The goal is to run these tests from the command line using xcodebuild, capture the results, and save them in a JSON format for further analysis.

Setup Instructions

Clone the repository:
git clone https://github.com/your-username/UITestExample.git
cd UITestExample
Ensure Xcode is installed: Make sure that you have Xcode and the necessary command line tools installed. Verify by running:
xcodebuild -version
Install dependencies (if any): Ensure all dependencies and packages are installed using CocoaPods or Swift Package Manager (if applicable).
Running the Tests

To run the unit and UI tests, execute the provided run_tests.sh script. This script will:

Run tests on the specified simulator (iPhone 14 with the latest iOS version).
Save the results in .xcresult format.
Convert the results into JSON format for easy analysis.
Command:
./run_tests.sh
Expected Output:
The tests will run, and you’ll see the following output in the terminal:

Success message if the tests pass.
Failure message if any test fails.
The JSON test results will be saved in the test_results/test_results.json file.

Viewing Test Results

After running the tests, the results will be saved in the following location:

test_results/test_results.json
You can open this file using any text editor or analyze it programmatically for detailed test outcomes.

Script Details

run_tests.sh
This script automates the process of running unit and UI tests and generates test results in JSON format. It includes the following steps:

Test Execution:
Runs tests using xcodebuild and stores the results in .xcresult format.
Results Parsing:
Uses xcrun xcresulttool to convert the .xcresult file into a JSON format for easy analysis.
Directory Structure:
All test results are stored in the test_results directory, keeping things organized.
Example Usage:
./run_tests.sh
This will run the tests and output the results into the test_results/test_results.json file.

