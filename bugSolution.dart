```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonString = response.body;
      try{
        final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;
        final user = jsonData['user'];
        if(user != null && user is Map){
          final userName = user['name'];
          if(userName != null && userName is String) {
            print(userName);
          }else{
            print("Error: User name is missing or not a String");
          }
        }else{
          print("Error: User data is missing or not in the correct format");
        }
      } on FormatException catch(e){
        print("Error: Invalid JSON format: ${e.message}");
      } catch(e){
        print('Error decoding JSON: $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```