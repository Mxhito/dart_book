// ignore_for_file: unused_import

import 'dart:isolate';

import 'async_prog_challenges.dart';
import 'callbacks.dart';
import 'async_wait.dart';
import 'data_class.dart';
import 'mini_ex_future.dart';
import 'streams.dart';
import 'mini_ex_streams.dart';
import 'isolate.dart';

Future<void> asyncProgMain() async {
  ///Futures
  final myFuture = Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  );

  print(myFuture); //! Instance of 'Future<int>'

  print('\n');

  //Getting the result with callbacks
  //callBacks();

  //Getting the result with async-await
  //asyncWait(); //* More readable than callBacks()

  //Asynchronous network requests
  //dataClass();

  //Mini-exercises
  //miniExFuture();

  ///Streams
  //streams();

  //Mini-exercises
  //miniExStreams();

  ///Isolate
  //isolate();

  //Challenges
  //asyncEx1();
  //asyncEx2();
  //asyncEx3();
  asyncEx4(n: 10); // n is fibonacci's argument
}
