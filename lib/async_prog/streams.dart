import 'dart:io';
import 'dart:async';
import 'dart:convert';

Future<void> streams() async {
  final file = File('assets/text.txt');
  final stream = file.openRead();
  await for (var number in stream.transform(utf8.decoder)) {
    print(number);
  }
}
