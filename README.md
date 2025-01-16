# UITestExample

This project demonstrates how to run Unit and UI tests for an iOS app using `xcodebuild` and export the results in JSON format. The results are saved locally in a structured directory.

## Project Overview

This repository includes an iOS app with both unit tests and UI tests written using XCTest. The goal is to run these tests from the command line using `xcodebuild`, capture the results, and save them in a JSON format for further analysis.

## Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/UITestExample.git
   cd UITestExample
   
**Running the Tests**

To run the unit and UI tests, execute the provided run_tests.sh script. This script will:

Run tests on the specified simulator (iPhone 14 with the latest iOS version).
Save the results in .xcresult format.
Convert the results into JSON format for easy analysis.

```bash
./run_tests.sh

Expected Output:
The tests will run, and you’ll see the following output in the terminal:

Success message if the tests pass.
Failure message if any test fails.
The JSON test results will be saved in the test_results/test_results.json file.


