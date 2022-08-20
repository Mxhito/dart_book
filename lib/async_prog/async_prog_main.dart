// ignore_for_file: unused_import

import 'callbacks.dart';
import 'async_wait.dart';

void asyncProgMain() {
  //Futures
  final myFuture = Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  );

  print(myFuture); //! Instance of 'Future<int>'

  print('\n');

  //Getting the result with callbacks
  //callBacks();

  //Getting the result with async-await
  asyncWait(); //* More readable than callBacks()
}
