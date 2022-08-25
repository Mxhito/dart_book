//Asynchronous network requests
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class Todo {
  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    return Todo(
        userId: jsonMap['userId'] as int,
        id: jsonMap['id'] as int,
        title: jsonMap['title'] as String,
        completed: jsonMap['completed'] as bool);
  }

  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  String toString() {
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}

Future<void> dataClass() async {
  try {
    final url = 'https://jsonplaceholder.typicode.com/todos/1';
    final parsedUrl = Uri.parse(url);
    final responce = await http.get(parsedUrl);
    final statusCode = responce.statusCode;
    if (statusCode == 200) {
      final rawJsonString = responce.body;
      final jsonMap = jsonDecode(rawJsonString);
      final todo = Todo.fromJson(jsonMap);
      print(todo);
    } else {
      throw HttpException('$statusCode');
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
}
