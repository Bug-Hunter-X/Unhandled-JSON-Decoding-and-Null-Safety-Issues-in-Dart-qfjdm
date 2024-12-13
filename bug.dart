```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here.  This is where the error can occur
      final jsonData = jsonDecode(response.body);
      //This line might throw a FormatException if the JSON is malformed.
      //If jsonData is not a Map, this would also throw an error
      final String userName = jsonData['user']['name'];
       print(userName);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e'); //This is very generic and may not provide the context
  }
}
```