```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      //Safe access: Check for null before accessing a property
      final data = jsonData['someData']; 
      if (data != null){
        print(data);
      }else{
        print("someData key not found!");
      }

    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```