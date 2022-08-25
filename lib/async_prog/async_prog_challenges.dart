import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:isolate';

///Challenge 1: Whose turn is it?
// 1, 11, 4, 5, 2, 3, 7, 9, 10, 8, 6
void asyncEx1() {
  print('1 synchronous');

  Future(() => print('2 event queue')).then(
    (value) => print('3 synchronous'),
  );

  Future.microtask(() => print('4 microtask queue'));
  Future.microtask(() => print('5 microtask queue'));

  Future.delayed(
    Duration(seconds: 1),
    () => print('6 event queue'),
  );

  Future(() => print('7 event queue')).then(
    (value) => Future(() => print('8 event queue')),
  );

  Future(() => print('9 event queue')).then(
    (value) => Future.microtask(
      () => print('10 microtask queue'),
    ),
  );
  print('11 synchronous');
}

////////////////////////////////////////////////////////////////////////////////
///Challenge 2: Care to make a comment?
Future<void> asyncEx2() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
  final commentList = <Comment>[];

  try {
    final responce = await http.get(url);
    final statusCode = responce.statusCode;

    if (statusCode == 200) {
      final rawJsonString = responce.body;
      final jsonList = jsonDecode(rawJsonString);
      for (var element in jsonList) {
        final comment = Comment.fromJson(element);
        commentList.add(comment);
      }
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

  print('Comment list length: ${commentList.length}');
}

class Comment {
  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory Comment.fromJson(Map<String, Object?> jsonMap) {
    return Comment(
      postId: jsonMap['postId'] as int,
      id: jsonMap['id'] as int,
      name: jsonMap['name'] as String,
      email: jsonMap['email'] as String,
      body: jsonMap['body'] as String,
    );
  }

  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  @override
  String toString() {
    return '$postId, $id, $name, $email, $body';
  }
}

////////////////////////////////////////////////////////////////////////////////
///Challenge 3: Data stream
Future<void> asyncEx3() async {
  final url = Uri.parse('https://raywenderlich.com');
  final client = http.Client();
  try {
    final request = http.Request('GET', url);
    final response = await client.send(request);
    final stream = response.stream;
    await for (var data in stream.transform(utf8.decoder)) {
      print(data.length);
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    client.close;
  }
}

////////////////////////////////////////////////////////////////////////////////
///Fibonacci from afar
Future<void> asyncEx4({required int n}) async {
  final receivePort = ReceivePort();
  final argument = {
    'sendPort': receivePort.sendPort,
    'n': n,
  };
  final isolate = await Isolate.spawn(fibonacci, argument);

  receivePort.listen((message) {
    print('Fibbonaci number $n is $message');
    receivePort.close();
    isolate.kill();
  });
}

void fibonacci(Map<String, Object> arguments) {
  final sendPort = arguments['sendPort'] as SendPort;
  final n = arguments['n'] as int;
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done += 1;
  }
  sendPort.send(current);
}
