# Unhandled Exception in Dart
This repository demonstrates a common error in Dart applications: insufficient error handling during JSON decoding and null safety. The original `bug.dart` file contains the flawed code, which lacks specific error handling for JSON decoding and potential null values. The improved `bugSolution.dart` file shows how to address these issues with more robust error handling and null safety checks.
## How to Reproduce the Bug
1. Clone this repository.
2. Run `bug.dart`. Observe the generic error message when the JSON is malformed or a key is missing.
## Solution
The `bugSolution.dart` file provides a solution by:
* Implementing specific exception handling for `FormatException` during JSON decoding.
* Adding null checks to prevent null pointer exceptions.
* Providing more informative error messages.