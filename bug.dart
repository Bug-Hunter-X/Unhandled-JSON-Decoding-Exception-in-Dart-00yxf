```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON string
      final jsonData = jsonDecode(response.body);
      // Process the jsonData here
    } else {
      // Handle error responses
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the network request
    print('Error fetching data: $e');
    // Optionally, re-throw the exception to be handled higher up in the call stack
    // rethrow;
  }
}
```