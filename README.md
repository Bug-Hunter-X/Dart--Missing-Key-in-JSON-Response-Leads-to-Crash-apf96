# Dart: Handling Missing Keys in JSON Responses

This example demonstrates a common error in Dart applications:  handling missing keys in JSON responses from APIs. The original `bug.dart` code attempts to access a key ('someData') that may not always be present in the JSON, leading to a runtime exception. 

The improved `bugSolution.dart` code addresses this by using safe access operators to handle missing keys gracefully.  This prevents application crashes and provides better error reporting to users.