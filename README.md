# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving network requests and JSON parsing: failure to handle potential `FormatException` exceptions that can occur when `jsonDecode` encounters invalid JSON data.  The example shows how to improve the code to gracefully handle this exception, providing a more robust and user-friendly experience.

## Bug

The original `fetchData` function only handles network errors (HTTP status codes other than 200).  If the server returns malformed JSON, a `FormatException` is thrown, causing the application to crash or behave unexpectedly. 

## Solution

The solution includes a `try-catch` block specifically to handle `FormatException` during JSON decoding, preventing application crashes and allowing for more informative error messages.